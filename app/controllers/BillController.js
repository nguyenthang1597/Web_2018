const express = require('express');
const router = express.Router();
const Bill = require('../Model/Bill')

router.get('/list', (req, res) => {
    Bill.loadAllBill()
        .then(result => {
            var vm = {
                layout: 'main-admin',
                title: 'Quản lý hóa đơn',
                bills: result,
                heading: 'Danh sách hóa đơn',
                successMessage: req.flash('successMessage')[0],
                errorMessage: req.flash('errorMessage')[0]
            }
            res.render('admin/bill/list', vm)
        })
})

router.post('/delete', (req, res) => {
    Bill.deleteById(req.body.Id)
        .then(result => {
            res.end('Xóa thành công');
        })
        .catch(err => {
            res.end();
        })
})

router.get('/info/:id', (req, res) => {
    Promise.all([Bill.getBillById(req.params.id), Bill.getInfoById(req.params.id)])
        .then(([result, result2]) => {
<<<<<<< HEAD
            console.log(result)
            console.log(result2);
=======
>>>>>>> origin
            var vm = {
                layout: 'main-admin',
                title: 'Quản lý hóa đơn',
                dsSP: result,
                info: result2[0],
                heading: 'Chi tiết hóa đơn'
            }
            res.render('admin/bill/info', vm);
        })
})

router.post('/info/:id', (req, res) => {
    Bill.updateTinhTrang(req.params.id, req.body.TINHTRANG)
        .then(result => {
            req.flash('successMessage', 'Cập nhật thành công!');
            return res.redirect('/admin/bill/list');
        })
        .catch(err => {
            req.flash('errorMessage', 'Cập nhật không thành công!');
            return res.redirect('/admin/bill/list');
        })
})

module.exports = router;