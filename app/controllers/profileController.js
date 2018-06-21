const express = require('express');
const account = require('../Model/accountModel.js')
const router = express.Router();

router.get('/', (req, res) => {
    res.render('user/profile');
});

module.exports = router;
