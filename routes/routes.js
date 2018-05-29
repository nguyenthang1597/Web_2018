var loginController = require("../app/controllers/loginController.js")


module.exports = (app) => {
    app.get('/', (req, res) => {
        res.render('index', {
            title: 'Express'
        })
    })

    // app.use("/login",loginController);
}