var SP = require("../app/controllers/SanPhamController")
module.exports = (app) => {
  app.use('/TrangChu',SP);
    // app.use("/login",loginController);
}