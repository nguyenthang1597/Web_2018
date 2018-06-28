const LoginController = require("../app/controllers/LoginController.js")
const SignupController = require('../app/controllers/SignupControler.js')
const restrict = require('../middle-wares/restrict.js');
const mw = require('../middle-wares/middlewares');
const AdminController = require('../app/controllers/AdminController')
const CatalogController = require('../app/controllers/CatalogController');
const CategoryController = require('../app/controllers/CategoryController');
const WelcomeController = require('../app/controllers/WelcomeController');
const ReportController = require('../app/controllers/ReportController')
const ProductController = require('../app/controllers/ProductController');
const UserAccount = require('../app/controllers/AccountController');
const BillController = require('../app/controllers/BillController');
const profileController = require('../app/controllers/profileController');
const cartController = require('../app/controllers/cartController');


module.exports = (app) => {
    app.use('/admin', AdminController);
<<<<<<< HEAD
    app.use('/profile', profileController);
=======
    app.use('/profile',profileController);
>>>>>>> 23eac95a8107961684a76139e41f83bff6b4ffba
    app.use('/cart', cartController);
    app.use('/admin/catalog', mw.isLoggedInAdmin, CatalogController);
    app.use('/admin/category', mw.isLoggedInAdmin, CategoryController);
    app.use('/admin/report', mw.isLoggedInAdmin, ReportController);
    app.use('/admin/product', mw.isLoggedInAdmin, ProductController);
    app.use('/admin/user-account', mw.isLoggedInAdmin, UserAccount);
    app.use('/admin/bill', mw.isLoggedInAdmin, BillController);
    app.use('/', WelcomeController);

}