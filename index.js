const express = require('express');
const createServer = require('./createServer');

const port = 8080;
const environment = process.env.NODE_ENV;
const server = createServer(express(), environment);

server.listen(port, () => {
    // eslint-disable-next-line no-console
    console.log(`Listening on port ${port}, environment: ${environment}`);
});
