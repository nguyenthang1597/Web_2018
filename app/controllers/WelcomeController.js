const express = require('express');
const router = express.Router();
const restrict = require('../../middle-wares/restrict.js');
const LoginController = require('./LoginController');
const mw = require('../../middle-wares/middlewares')

router.get('/login',mw.LoggedUser,LoginController.loginForm);

router.post('/login',mw.LoggedUser, LoginController.userLogin);

module.exports = router;