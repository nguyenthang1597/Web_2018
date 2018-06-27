const express = require('express');
const cartModel = require('../Model/cartModel.js');
const mw = require('../../middle-wares/middlewares');
const accountModel = require('../Model/Account');
var db = require('../../config/mysql');
const router = express.Router();

router.get('/', mw.isLoggedInUser, (req, res) => {
    res.render('user/cart');
});

module.exports = router;