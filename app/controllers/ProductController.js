const express = require('express');
const router = express.Router();

const Product = require('../Model/Product');
const Catalog = require('../Model/Catalog');
const Category = require('../Model/Category');
const multer = require('multer');
const fs = require('fs');
const moment = require('moment');


const storage = multer.diskStorage({
    destination: 'public/upload/product/',
    filename: (req, file, cb) => {
        cb(null, Date.now() + '_' + file.originalname.replace(' ', ''));
    }
});

const deleteOldPic = (filename) => {
    let url_del = 'public/upload/product/' + filename;
    if (fs.existsSync(url_del))
        fs.unlinkSync(url_del);
};
const upload = multer({
    storage: storage
}).single('Pic');


router.get('/list', (req, res) => {
    Product.getAll()
    .then(result => {
        res.render('admin/product/list', {
            layout: 'main-admin',
            title: 'Quản lý xe',
            heading: 'Danh sách xe',
            products: result,
            successMessage: req.flash('successMessage')[0],
            errorMessage: req.flash('errorMessage')[0]
        })
    })
    .catch(err => {
        console.log(err);
        res.end();
    })
})


router.post('/visible', (req, res) => {
    Product.visible({
        Id: req.body.Id,
        isHide: req.body.isHide
    })
    .then(result => {
        res.end("Thanh cong!");
    })
    .catch(err => {
        res.end();
    })
})

router.post('/delete', (req, res) => {
    Product.deleteById(req.body.Id)
    .then(result => {
        res.send('Xóa thành công!');
    })
    .catch(err => {
        res.end();
    })
})

router.get('/edit/:Id', (req, res) => {
    Promise.all([Product.getOneById(req.params.Id), Catalog.getAll(), Category.getAll()])
    .then(([product, catalogs, category]) => {
        res.render('admin/product/edit', {
            layout: 'main-admin',
            title: 'Quản lý xe',
            heading: 'Chỉnh sửa thông tin xe',
            product: product[0],
            catalogs: catalogs,
            category: category
        })
    })
    .catch(err => {
        console.log(err);
        res.end();
    })
})

router.post('/edit/:Id', (req, res) => {
    upload(req, res, (err) => {
        if(err){
            req.flash('errorMessage', 'Cập nhật thông tin xe không thành công!');
            return res.redirect('/admin/product/list');
        }
        let isHide = req.body.isHide ? 1 : 0;
        let product = {
            TenSP: req.body.TenSP,
            HangXe: req.body.HangXe,
            LoaiXe: req.body.LoaiXe,
            MoTa: req.body.MoTa,
            ChiTiet: req.body.ChiTiet,
            GiaBan: req.body.GiaBan,
            SoLuong: req.body.SoLuong,
            XuatXu: req.body.XuatXu,
            isHide: isHide
        }

        Product.getOneById(req.params.Id)
        .then(result => {
            if ((typeof req.file) == 'undefined') {
                product.Pic = result[0].HinhAnh;
            } else {
                deleteOldPic(result[0].HinhAnh);
                product.HinhAnh = req.file.filename;
            }

            Product.updateById(req.params.Id, product)
            .then(result => {
                req.flash('successMessage', 'Cập nhật thành công!');
                return res.redirect('/admin/product/list');
            })
            .catch(err => {
                console.log(err);
                deleteOldPic(req.file.filename);
                req.flash('errorMessage', 'Cập nhật không thành công!');
                return res.redirect('/admin/product/list');
            })
        })
    })
})

router.get('/add', (req, res) => {
    Promise.all([Catalog.getAll(), Category.getAll()])
    .then(([catalogs, category]) => {
        res.render('admin/product/add', {
            layout: 'main-admin',
            title: 'Quản lý xe',
            heading: 'Thêm xe mới',
            catalogs: catalogs,
            category: category
        })
    })
    .catch(err => {
        res.end();
    })
})


router.post('/add', (req, res) => {
    upload(req, res, (err) => {
        if(err){
            req.flash('errorMessage', 'Thêm xe mới không thành công!');
            return res.redirect('/admin/product/list');
        }
        let product = {
            HangXe: req.body.HangXe,
            TenSP: req.body.TenSP,
            LoaiXe: req.body.LoaiXe,
            GiaBan: req.body.GiaBan,
            SoLuong: req.body.SoLuong,
            NgayNhap: moment().format('YYYY-MM-DD'),
            MoTa: req.body.MoTa,
            ChiTiet: req.body.ChiTiet,
            XuatXu: req.body.XuatXu
        }

        if(typeof req.file == 'undefined'){
            product.HinhAnh = '';
        }
        else
            product.HinhAnh = req.file.filename;

        console.log(product);
        Product.add(product)
        .then(result => {
            req.flash('successMessage', 'Thêm xe mới thành công!');
            res.redirect('/admin/product/list');
        })
        .catch(err => {
            console.log(err);
            req.flash('errorMessage', 'Thêm xe mới không thành công!');
            res.redirect('/admin/product/list');
        })
    })
})

module.exports = router;