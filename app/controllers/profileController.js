const express = require('express');
const restrict = require('../../middle-wares/restrict.js');
const mw = require('../../middle-wares/middlewares')
const Account = require('../Model/Account');
var db = require('../../config/mysql');
const sha256 = require('sha256');
const router = express.Router();

router.get('/', mw.isLoggedInUser, (req, res) => {
    let id = req.user.id;
    Account.loadProfileUserById(id).then(result => {
            console.log(result[0]);
            let vm = {
                user: result[0],
                successMessage: req.flash('successMessage')[0],
                errorMessage: req.flash('errorMessage')[0]
            }
            res.render('user/profile', vm)
        })
        .catch(err => {
            console.log("ERR: " + err);
            req.user = null;
            res.redirect('/');
        })
});

router.post('/', mw.isLoggedInUser, (req, res) => {
    var data = {
        id: req.user.id,
        Ten: req.body.Ten,
        Email: req.body.Email,
        SDT: req.body.SDT,
        CMND: req.body.CMND,
        NgaySinh: req.body.NgaySinh,
        DiaChi: req.body.DiaChi
    }
    Account.updateProfileUser(data).then(result => {
            req.flash('successMessage', 'Cập nhật thành công!');
            res.redirect('/profile');
        })
        .catch(err => {
            console.log('Loi cap nhat: ', err);
            req.flash('errorMessage', 'Chỉnh sửa không thành công!');
            res.redirect('/profile');
        })
})


router.get('/ChangePassword', mw.isLoggedInUser, (req, res) => {
    res.render('user/doimatkhau');
});

router.post('/ChangePassword', mw.isLoggedInUser, (req, res) => {
    let currentUsername = req.session.user.username;
    accountModel.loadUserByUsername(currentUsername).then(row => {
        if (row[0].password !== sha256(req.body.oldPassword).toString()) {
            res.redirect('/profile/ChangePassword');
        } else {
            console.log(req.body.newPassword);
            if ((req.body.newPassword === req.body.reNewPassword) && (req.body.newPassword !== req.body.oldPassword)) {
                let newPassword = sha256(req.body.newPassword).toString();
                let sql = `UPDATE account SET password = '${newPassword}' WHERE username = '${currentUsername}';`;
                db(sql).then(rows => {
                    res.redirect('/login');
                })
            } else {
                res.redirect('/profile/ChangePassword');
            }
        }
    })
});

module.exports = router;
