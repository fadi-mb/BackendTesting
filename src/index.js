process.env.TZ = 'UTC'
const express = require('express');
const app = express();
const http = require('http');

const dotenv = require('dotenv');
dotenv.config();

const port = 12345;
const httpServer = http.createServer(app);

const middleware = require('./middleware');

app.get('/performance', middleware.testPerformance);
app.get('/measurements', middleware.measurements);

httpServer.listen(port, () => {
    console.log(`Listening on port ${port}`);
})
