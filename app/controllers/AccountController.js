var express = require('express');
var router = express.Router();
var Account = require('../Model/Account');

router.get('/list', (req, res) => {
    Account.loadAllUserAccount()
        .then(result => {
            var vm = {
                layout: 'main-admin',
                title: 'Quản lý thành viên',
                heading: 'Danh sách khách hàng',
                users: result,
                successMessage: req.flash('successMessage')[0],
                errorMessage: req.flash('errorMessage')[0]
            }
            res.render('admin/user-account/list', vm)
        })
})

module.exports = router;