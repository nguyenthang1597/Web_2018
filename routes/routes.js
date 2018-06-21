var loginController = require("../app/controllers/loginController.js")
var signupController = require('../app/controllers/signupControler.js')
var SP = require("../app/controllers/SanPhamController")
var restrict = require('../middle-wares/restrict.js');

module.exports = (app) => {
	app.use('/',SP);
	app.use("/login",loginController);
	app.use('/signup',signupController);
}