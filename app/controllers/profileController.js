const express = require('express');
const restrict = require('../../middle-wares/restrict.js');
const mw = require('../../middle-wares/middlewares')
const accountModel = require('../Model/Account');
var db = require('../../config/mysql');
const sha256 = require('sha256');
const router = express.Router();

router.get('/', mw.isLoggedInUser, (req, res) => {
    let username = req.session.user.username;
    accountModel.loadUserByUsername(username).then(row => {
        let vm = {
            user: row[0]
        }
        res.render('user/profile', vm);
    })
});


router.get('/doimatkhau', mw.isLoggedInUser, (req, res) => {
    res.render('user/doimatkhau');
});

router.post('/doimatkhau', mw.isLoggedInUser, (req, res) => {
    let currentUsername = req.session.user.username;
    accountModel.loadUserByUsername(currentUsername).then(row => {
        if (row[0].password !== sha256(req.body.oldPassword).toString()) {
            res.redirect('/profile/doimatkhau');
        } else {
            console.log(req.body.newPassword);
            if ((req.body.newPassword === req.body.reNewPassword) && (req.body.newPassword !== req.body.oldPassword)) {
                let newPassword = sha256(req.body.newPassword).toString();
                let sql = `UPDATE account SET password = '${newPassword}' WHERE username = '${currentUsername}';`;
                db(sql).then(rows => {
                    res.redirect('/login');
                })
            } else {
                res.redirect('/profile/doimatkhau');
            }
        }
    })
});

module.exports = router;
