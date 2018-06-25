const express = require('express');
const router = express.Router();
const Category = require('../Model/Category');

router.get('/list', (req, res) => {
    Category.getAll()
    .then(result => {
        res.render('admin/category/list', {
            layout: 'main-admin',
            title: 'Quản lí loại xe',
            heading: 'Danh sách loại xe',
            categorys: result,
            successMessage: req.flash('successMessage')[0],
            errorMessage: req.flash('errorMessage')[0]
        })
    })
    .catch(err => {
        console.log(err);
    })
})

router.get('/add', (req, res) => {
    res.render('admin/category/add', {
        layout: 'main-admin',
        title: 'Quản lí loại xe',
        heading: 'Thêm loại xe mới'
    })
})

router.post('/add', (req, res) => {
    let category = {
        TenLoai: req.body.TenLoai
    }
    Category.add(category)
    .then(result => {
        req.flash('successMessage', 'Thêm loại xe mới thành công!');
        res.redirect('/admin/category/list');
    })
    .catch(err => {
        console.log(err);
        req.flash('errorMessage', 'Thêm loại xe không mới thành công!');
        res.redirect('/admin/category/list');
    })
})

router.get('/edit/:id', (req, res) => {
    Category.getOneById(req.params.id)
    .then(result => {
        res.render('admin/category/edit',{
            layout: 'main-admin',
            title: 'Quản lí loại xe',
            heading: 'Chỉnh sửa thông tin loại xe',
            category: result[0]
        })
    })
})

router.post('/edit/:id', (req, res) => {
    let category = {
        TenLoai: req.body.TenLoai,
        isHide: req.body.isHide ? 1 : 0
    }
    Category.updateById(req.params.id, category)
    .then(result => {
        req.flash('successMessage', 'Chỉnh sửa thông tin loại xe thành công!');
        res.redirect('/admin/category/list');
    })
    .catch(err => {
        console.log(err);
        req.flash('errorMessage', 'Chỉnh sửa thông tin loại xe không thành công!');
        res.redirect('/admin/category/list');
    })
})

router.post('/delete', (req, res)=> {
    Category.deleteById(req.body.Id)
    .then(result => {
        res.end('Xóa thành công!');
    })
    .catch(err => {
        res.end();
    })
})

router.post('/visible', (req, res) => {
    let info = {
        Id: req.body.Id,
        isHide: req.body.isHide
    }
    Category.visible(info)
    .then(result => {
        res.end('Thành công!');
    })
    .catch(err => {
        res.end();
    })
})



module.exports = router;