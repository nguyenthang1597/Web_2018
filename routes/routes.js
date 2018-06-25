const loginController = require("../app/controllers/loginController.js");
const signupController = require('../app/controllers/signupController');
const SanPhamController = require("../app/controllers/SanPhamController");
const profileController = require('../app/controllers/profileController.js');
const cartController = require('../app/controllers/cartController.js');
const restrict = require('../middle-wares/restrict.js');
const mw = require('../middle-wares/middlewares');
const AdminController = require('../app/controllers/AdminController')
const CatalogController = require('../app/controllers/CatalogController');
const CategoryController = require('../app/controllers/CategoryController');
const WelcomeController = require('../app/controllers/WelcomeController');
const UserAccount = require('../app/controllers/AccountController');
const BillController = require('../app/controllers/BillController')

module.exports = (app) => {
	app.use('/',SanPhamController);
	// app.use("/login",loginController);
	// app.use('/signup',signupController);
	app.use('/profile', profileController);
    app.use('/cart', cartController);
    app.use('/admin', AdminController);
    app.use('/admin/catalog', mw.isLoggedInAdmin, CatalogController);
    app.use('/admin/category', mw.isLoggedInAdmin, CategoryController);
    app.use('/admin/user-account',mw.isLoggedInAdmin,UserAccount);
    app.use('/admin/bill',mw.isLoggedInAdmin,BillController);
    app.use('/',WelcomeController);
}
