const loginController = require("../app/controllers/loginController.js")
const signupController = require('../app/controllers/signupControler.js')
const restrict = require('../middle-wares/restrict.js');
const mw = require('../middle-wares/middlewares');
const AdminController = require('../app/controllers/AdminController')
const CatalogController = require('../app/controllers/CatalogController');
const CategoryController = require('../app/controllers/CategoryController');

module.exports = (app) => {
    app.get('/', (req, res) => {
        res.render('index', {
            title: 'Express'
        })
    })

    app.use('/admin', AdminController);
    app.use('/admin/catalog', mw.isLoggedInAdmin, CatalogController);
    app.use('/admin/category', mw.isLoggedInAdmin, CategoryController);
}