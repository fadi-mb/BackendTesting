process.env.TZ = 'UTC'
const express = require('express');
const { query } = require('express-validator');
const app = express();
const http = require('http');

const dotenv = require('dotenv');
dotenv.config();

const port = 12345;
const idsRegex = /^(\d{1,8},)*\d{1,8}$/;
const httpServer = http.createServer(app);

const middleware = require('./middleware');

app.get('/performance', middleware.testPerformance);
app.get('/measurements', [
    query('devices')
        .exists().withMessage('Device IDs must be provided!')
        .matches(/^(\d{1,8},)*\d{1,8}$/).withMessage('Invalide device IDs!')
    // .custom(value => {
    //     console.log(`custom ${value}`);
    //     console.log(value);
    //     if (value) {
    //         return idsRegex.test(value);
    //     }
    //     return false;
    // }
    // )
], middleware.measurements);


app.use((error, req, res, next) => {
    if (error.statusCode) {
        res.status(error.statusCode).json({
            message: error.message
        })
    } else {
        res.status(500).json({
            message: 'Some error occurred!,sorry for the inconvenience!'
        })
    }

});

httpServer.listen(port, () => {
    console.log(`Listening on port ${port}`);
})
