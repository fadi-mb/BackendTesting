const { validationResult } = require('express-validator');

const knex = require("knex")({
    client: "mysql",
    connection: {
        host: process.env.dbhost,
        port: process.env.dbport,
        user: process.env.dbuser,
        password: process.env.dbpassword,
        database: process.env.dbname,
        debug: ['ComQueryPacket'],
        typeCast: function castField(field, useDefaultTypeCasting) {
            if ((field.type === "BIT") && (field.length === 1)) {
                var bytes = field.buffer();
                return bytes ? bytes[0] == 1 : null;
            }
            return (useDefaultTypeCasting());
        }
    }
});

exports.testPerformance = [
    async (req, res, next) => {
        try {
            //Retrieving all required data by one query
            const rawData = await knex.select('companies.id', 'companies.name', 'users.email', 'users.id as u_id', 'users.phone').orderBy('companies.id').from('companies').leftJoin('users', 'users.company_id', 'companies.id');

            //Transforming data into nested objects structure 
            const map = new Map();
            rawData.forEach((item) => {
                const key = item.id;
                let company = map.get(key);
                if (!company) {
                    company = { id: item.id, name: item.name, users: [] };
                    map.set(key, company);
                }
                if (item.email) {
                    company.users.push({ id: item.u_id, email: item.email, phone: item.phone });
                }
            });
            const data = [...map.values()];
            // const data = await Promise.all(
            //     (await knex('companies').select('id', 'name')).map(async company => {
            //         company.users = await knex('users').where('company_id', company.id).select('email', 'id', 'phone');
            //         return company;
            //     })
            // );
            res.status(200).json(data);
        } catch (err) {
            next(err);
        }
    }
]

exports.measurements = [
    async (req, res, next) => {
        try {
            const errors = validationResult(req);
            if (!errors.isEmpty()) {
                console.log(errors.errors);
                const error = new Error(`Validation failed, ${errors.errors[0].msg}.`);
                error.statusCode = 422;
                throw error;
            }
            //Convert devices IDs from comma separeted values to a number array
            const devices = req.query.devices.split(',').map(id => +id);

            const lastReads =
                await knex(
                    knex('iot_measurements').whereIn('device_id', devices).select('device_id', 'sensor_id').max('id as id').groupBy(['device_id', 'sensor_id']).as('t1')
                ).innerJoin('iot_measurements as t2', 't1.id', 't2.id')
                    .select('t2.device_id', 't2.sensor_id', 't2.alarm_id', 't2.value', 't2.status', 't2.created_at');

            const rawSensorsStatus =
                await knex('iot_measurements').whereIn('device_id', devices).select('device_id', 'sensor_id', 'status', knex.raw('COUNT(DISTINCT(alarm_id)) as reported'))
                    .groupBy('device_id', 'sensor_id', 'status')

            //Transforming sensorsStatus data to a meet the form requested 
            const map = new Map();
            rawSensorsStatus.forEach((item) => {
                const key = item.device_id.toString() + '_' + item.sensor_id.toString();
                let sensor = map.get(key);
                if (!sensor) {
                    sensor = {
                        device_id: item.device_id,
                        sensor_id: item.sensor_id,
                        good: 0,
                        poor: 0,
                        problem: 0,
                        ok: 0
                    };
                    map.set(key, sensor);
                }
                switch (item.status) {
                    case 'good': sensor.good = item.reported; break;
                    case 'poor': sensor.poor = item.reported; break;
                    case 'problem': sensor.problem = item.reported; break;
                    case 'ok': sensor.ok = item.reported; break;
                    default: break;
                }
            });
            const sensorsStatus = [...map.values()];

            const reuslt = { lastReads: lastReads, sensorsStatus: sensorsStatus }
            res.status(200).json(reuslt);
        } catch (err) {
            console.log(err);
            next(err);
        }
    }
]
