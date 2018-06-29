const express = require('express');
const cartModel = require('../Model/cartModel.js');
const mw = require('../../middle-wares/middlewares');
const accountModel = require('../Model/Account');
const db = require('../../config/mysql');
const Product = require('../Model/Product');
const Bill = require('../Model/Bill');
const router = express.Router();


router.get('/', mw.isLoggedInUser, (req, res) => {
    res.render('user/cart');
});

function getList(list, cb) {
    let car = [];
    let finded = [];
    let i = 0;
    let leng = list.length;
    list.forEach(element => {
        if (finded.indexOf(element) < 0) {
            finded.push(element);
            Product.getOneById(element)
                .then(result => {
                    car.push(result);
                    i++;
                    if (i == leng)
                        cb(car);
                })
        } else {
            leng--;
        }
    })

}

router.post('/get', (req, res) => {
    let list = req.body['list[]'];
    //console.log(list);
    if(list)
        getList(list, (car => {
            //console.log(car);
            res.send(JSON.stringify(car));
        }))
    else
        res.end();
})

router.post('/addHoaDon', mw.isLoggedInUser, (req, res) => {
    let arrXe = req.body['arrXe'];
    let arrSL = req.body['arrSL'];
    let ds_IDXe = arrXe.split(",");
    let ds_IDSL = arrSL.split(",");
    for (var i = 0; i < ds_IDXe.length; i++) {

        if (ds_IDXe[i] === '' ) {
            ds_IDXe.splice(i, 1);
        }
        if (ds_IDSL[i] === '') {
            ds_IDSL.splice(i, 1);
        }
    }
    ds_IDSL.splice(ds_IDXe.length, ds_IDSL.length - ds_IDXe.length)
   

    let idKh = req.user.id;
    Bill.addBill(idKh).then(result => {
        let lassId = result.insertId;
        console.log("add hoa don moi");
        Bill.addBillInfo(lassId,ds_IDXe,ds_IDSL).then(result => {
            console.log(result);
            console.log("add hoa don thanh cong");
            Bill.TinhTongTien(lassId).then(result => {
                console.log("Tong tien: " + result[0].TongTien);
                Bill.updateTongTien(lassId,result[0].TongTien).then(result => {
                    console.log('Da them hoa don');
                    res.redirect('/')
                })
                .catch(err => {
                    console.log(err);
                    res.redirect('/');
                })
            })
            .catch(err => {
                console.log(err);
                res.redirect('/');
            })
        })
        .catch(err => {
            console.log(err);
            res.redirect('/');
        })
    })
    .catch(err => {
        console.log(err);
        res.redirect('/');
    })
});

module.exports = router;