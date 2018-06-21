var loginController = require("../app/controllers/loginController.js");
var signupController = require('../app/controllers/signupControler.js');
var SP = require("../app/controllers/SanPhamController");
var profileController = require('../app/controllers/profileControler.js');
var restrict = require('../middle-wares/restrict.js');

module.exports = (app) => {
	app.use('/',SP);
	app.use("/login",loginController);
	app.use('/signup',signupController);
	app.use('/profile', profileController);
}