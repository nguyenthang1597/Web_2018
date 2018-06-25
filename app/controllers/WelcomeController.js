const express = require('express');
const router = express.Router();
const restrict = require('../../middle-wares/restrict.js');
const LoginController = require('./LoginController');
const mw = require('../../middle-wares/middlewares')
const signupController = require('./signupController');

router.get('/login',mw.LoggedUser,LoginController.loginForm);
router.get('/signup',signupController.formSignUp);

router.post('/login',mw.LoggedUser, LoginController.userLogin);
router.post('/signup',signupController.userSignUp);

module.exports = router;