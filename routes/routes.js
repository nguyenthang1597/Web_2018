const loginController = require("../app/controllers/loginController.js");
const signupController = require('../app/controllers/signupControler.js');
const SP = require("../app/controllers/SanPhamController");
const profileController = require('../app/controllers/profileControler.js');
const cartController = require('../app/controllers/cartController.js');
const restrict = require('../middle-wares/restrict.js');

module.exports = (app) => {
	app.use('/',SP);
	app.use("/login",loginController);
	app.use('/signup',signupController);
	app.use('/profile', profileController);
	app.use('/cart', cartController);
}