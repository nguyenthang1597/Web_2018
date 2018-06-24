const express = require('express');
const router = express.Router();
const Bill = require('../Model/Bill')

router.get('/list', (req,res)=> {
    Bill.loadAllBill()
    .then(result => {
        var vm = {
            layout: 'main-admin',
            title: 'Quản lý hóa đơn',
            bills: result,
            heading: 'Danh sách hóa đơn'
        }
        res.render('admin/bill/list',vm)
    })
})

router.post('/delete',(req,res) => {
    Bill.deleteById(res.body.Id)
    .then(result => {
        res.end('Xóa thành công');
    })
    .catch(err => {
        res.end();
    })
})

module.exports = router;