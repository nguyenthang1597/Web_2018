const express = require('express');
const accountModel = require('../Model/Account');
const router = express.Router();

router.get('/', (req, res) => {
    accountModel.loadUserById(1)
    .then(result => {
        var vm = {
            account: result[0]
        }
        res.render('user/profile', vm);
    })
});

module.exports = router;
