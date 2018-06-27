const express = require('express');
const router = express.Router();
const multer = require('multer');
const Catalog = require('../Model/Catalog');
const fs = require('fs');

const storage = multer.diskStorage({
    destination: 'public/upload/catalog/',
    filename: (req, file, cb) => {
        cb(null, Date.now() + '_' + file.originalname.replace(' ', ''));
    }
});

const deleteOldPic = (filename) => {
    let url_del = 'public/upload/catalog/' + filename;
    if (fs.existsSync(url_del))
        fs.unlinkSync(url_del);
};
const upload = multer({
    storage: storage
}).single('Pic');

router.get('/list', (req, res) => {
    Catalog.getAll()
        .then(result => {
<<<<<<< HEAD
            console.log(result);
=======
>>>>>>> origin
            res.render('admin/catalog/list', {
                layout: 'main-admin',
                catalogs: result,
                title: 'Quản lý hãng xe',
                heading: 'Danh sách hãng xe',
                successMessage: req.flash('successMessage')[0],
                errorMessage: req.flash('errorMessage')[0]
            })
        })
})

router.get('/edit/:id', (req, res) => {
    Catalog.getOneById(req.params.id)
        .then(result => {
            res.render('admin/catalog/edit', {
                layout: 'main-admin',
                catalog: result[0],
                title: 'Quản lý hãng xe',
                heading: 'Chỉnh sửa thông tin hãng xe',
            })
        })
})

router.post('/edit/:id', (req, res) => {
    upload(req, res, (err) => {
        if (err) {
<<<<<<< HEAD
            console.log(err);
=======
>>>>>>> origin
            req.flash('errorMessage', 'Chỉnh sửa không thành công!');
            return res.redirect('/admin/catalog/list');
        }
        console.log(req.file);
        let catalog = {
            TenHang: req.body.TenHang,
            isHide: req.body.isHide ? 1 : 0
        }
        Catalog.getOneById(req.params.id)
            .then(result => {
                if (typeof req.file == undefined) {
                    catalog.Pic = result[0].Pic;
                } else {
                    deleteOldPic(result.Pic);
                    catalog.Pic = req.file.filename;
                }
                Catalog.updateById(req.params.id, catalog)
                    .then(result => {
                        req.flash('successMessage', 'Cập nhật thành công!');
                        return res.redirect('/admin/catalog/list');
                    })
                    .catch(err => {
                        console.log(err);
                        deleteOldPic(req.file.filename);
                        req.flash('errorMessage', 'Cập nhật không thành công!');
                        return res.redirect('/admin/catalog/list');
                    })
            })
            .catch(err => {
                console.log(err);
            })
    })
})

router.get('/add', (req, res) => {
    res.render('admin/catalog/add', {
        layout: 'main-admin',
        title: 'Quãn lí hãng xe',
        heading: 'Thêm hãng xe mới'
    })
})

router.post('/add', (req, res) => {
    upload(req, res, (err) => {
        if(err){
            req.flash('errorMessage', 'Thêm hãng xe không thành công!');
            return res.redirect('/admin/catalog/list');
        }
        let catalog = {
            TenHang: req.body.TenHang
        }
        if(typeof req.file == 'undefined')
            catalog.Pic = '';
        else
            catalog.Pic = req.file.filename;

        Catalog.add(catalog)
        .then(result => {
            req.flash('successMessage', 'Thêm hãng xe thành công!');
            return res.redirect('/admin/catalog/list');
        })
        .catch(err => {
            deleteOldPic(req.file.filename);
            req.flash('errorMessage', 'Thêm hãng xe không thành công!');
            return res.redirect('/admin/catalog/list');
        })
    })
})


router.post('/delete', (req, res)=> {
    Catalog.deleteById(req.body.Id)
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
    Catalog.visible(info)
    .then(result => {
        res.end('Thành công!');
    })
    .catch(err => {
        res.end();
    })
})

router.get('/getAll', (req, res) => {
    Catalog.getAll()
    .then(result => {
        let a = JSON.stringify(result);
        res.end(a);
    })
    .catch(err => {
        console.log(err);
    })
})

module.exports = router;