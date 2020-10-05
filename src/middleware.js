const knex = require("knex")({
    client: "mysql",
    connection: {
        host: process.env.dbhost,
        port: process.env.dbport,
        user: process.env.dbuser,
        password: process.env.dbpassword,
        database: process.env.dbname,
        typeCast: function castField(field, useDefaultTypeCasting) {
            if ((field.type === "BIT") && (field.length === 1)) {
                var bytes = field.buffer();
                return bytes ? bytes[0] == 1 : null;
            }
            return (useDefaultTypeCasting());
        }
    }
});

console.log("testAdnan");

exports.testPerformance = [
    async (req, res, next) => {
        try {
            const data = await Promise.all(
                (await knex('companies').select('id', 'name')).map(async company => {
                    company.users = await knex('users').where('company_id', company.id).select('email', 'id', 'phone');
                    return company;
                })
            );
            res.status(200).json(data);
        } catch (err) {
            next(err);
        }
    }
]

exports.measurements = [
    async (req, res, next) => {
        try {
            const reuslt = {}
            res.status(200).json(reuslt);
        } catch (err) {
            next(err);
        }
    }
]
