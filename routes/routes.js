const loginController = require("../app/controllers/loginController.js")
const signupController = require('../app/controllers/signupControler.js')
const restrict = require('../middle-wares/restrict.js');
const mw = require('../middle-wares/middlewares');
const AdminController = require('../app/controllers/AdminController')
const CatalogController = require('../app/controllers/CatalogController');
const CategoryController = require('../app/controllers/CategoryController');
const WelcomeController = require('../app/controllers/WelcomeController');
const ReportController = require('../app/controllers/ReportController')
const ProductController = require('../app/controllers/ProductController');

module.exports = (app) => {
    app.use('/admin', AdminController);
    app.use('/admin/catalog', mw.isLoggedInAdmin, CatalogController);
    app.use('/admin/category', mw.isLoggedInAdmin, CategoryController);
    app.use('/admin/report', mw.isLoggedInAdmin, ReportController);
    app.use('/admin/product', mw.isLoggedInAdmin, ProductController);
    app.use('/',WelcomeController);
}