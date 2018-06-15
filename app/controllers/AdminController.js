const express = require('express');
const router = express.Router();
const mw = require('../../middle-wares/middlewares');
const LoginController = require('../controllers/loginController');


router.get('/', mw.LoggedAdmin, LoginController.formAdminLogin);
router.post('/', mw.LoggedAdmin, LoginController.adminLogin);

router.get('/dashboard',mw.isLoggedInAdmin, (req, res) => {
    res.render('admin/dashboard', {
        layout: 'main-admin',
        user: req.user
    })
})

router.get('/logout', mw.isLoggedInAdmin, LoginController.adminLogout);

module.exports = router;