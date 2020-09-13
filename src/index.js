process.env.TZ = 'UTC'
const express = require('express');
const app = express();
const http = require('http');

const port = 12345;
const httpServer = http.createServer(app);

const middleware = require('./middleware');

app.get('/performance', middleware.testPerformance);
app.get('/dependency', middleware.dependency);

httpServer.listen(port, () => {
    console.log(`Listening on port ${port}`);
})
