const express = require('express');
const account = require('../Model/cartModel.js')
const router = express.Router();

router.get('/', (req, res) => {
    res.render('cart/index');
});

module.exports = router;
