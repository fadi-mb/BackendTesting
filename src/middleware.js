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
function groupBy(list, keyGetter) {
    const map = new Map();
    list.forEach((item) => {
        const key = keyGetter(item);
        const collection = map.get(key);
        if (!collection) {
            map.set(key, [item]);
        } else {
            collection.push(item);
        }
    });
    return map;
}
exports.testPerformance = [
    async (req, res, next) => {
        try {
            //Retraiving all required data by one query
            //select `companies`.`id`, `companies`.`name`, `users`.`email`, `users`.`id` as `u_id`, `users`.`phone` from `companies` inner join `users` on `users`.`company_id` = `companies`.`id` order by `companies`.`id` asc
            const rawData = await knex.select(['companies.id', 'companies.name', 'users.email', 'users.id as u_id', 'users.phone']).orderBy('companies.id').from('companies').leftJoin('users', 'users.company_id', 'companies.id');

            //Transforming data to a tree structure 
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
            const reuslt = {}
            res.status(200).json(reuslt);
        } catch (err) {
            next(err);
        }
    }
]
