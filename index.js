const express = require('express');

const PORT = 3000;
const HOST = '0.0.0.0';

const app = express();

app.get('/', (rep, res) => {
    res.send('Hello World');
});

app.listen(PORT, HOST);