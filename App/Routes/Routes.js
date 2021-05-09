module.exports = (app) => {

    const controller = require('../Controllers/Controller');

    app.get('/customer', controller.getAll);
    app.get('/customer/:Id', controller.getOne);
    app.post('/customer', controller.Create);
    app.put('/customer/:Id', controller.Update);
    app.delete('/customer/:Id', controller.Delete);
}