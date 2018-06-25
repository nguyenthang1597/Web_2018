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
    Bill.deleteById(req.body.Id)
    .then(result => {
        res.end('Xóa thành công');
    })
    .catch(err => {
        res.end();
    })
})

router.get('/info/:id',(req,res)=> {
    Promise.all([Bill.getBillById(req.params.id),Bill.getInfoById(req.params.id)])
    .then(([result,result2]) => {
        var vm = {
            layout: 'main-admin',
            title: 'Quản lý hóa đơn',
            dsSP: result,
            info: result2[0],
            heading: 'Chi tiết hóa đơn'
        }
        res.render('admin/bill/info',vm);
    })
})

module.exports = router;