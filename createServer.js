const createServer = (server, environment) => {

    server.get('/', (req, res) => {
        res.send('NodeJS express Test2');
    });

    server.get('/ready', (req, res) => {
        res.send('Ready!');
    });

    server.get('/alive', (req, res) => {
        res.send('Alive!');
    });

    return server;
};

module.exports = createServer;
