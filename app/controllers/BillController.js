const express = require('express');
const router = express.Router();

router.get('/list', (req,res)=> {
    var vm = {
        layout: 'main-admin',
        title: 'Quản lý hóa đơn',
        heading: 'Danh sách hóa đơn'
    }
    res.render('admin/bill/list',vm)
})

module.exports = router;