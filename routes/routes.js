var loginController = require("../app/controllers/loginController.js")
var signupController = require('../app/controllers/signupControler.js')
var restrict = require('../middle-wares/restrict.js');

module.exports = (app) => {
    app.get('/', (req, res) => {
        res.render('index', {
            title: 'Express'
        })
    })
    app.use("/login",loginController);
    app.use('/signup',restrict,signupController);

}