var loginController = require("../app/controllers/SanPhamController")


module.exports = (app) => {
    app.get('/', (req, res) => {
        res.render('index')
    })

    // app.use("/login",loginController);
}