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
    getList(list, (car => {
        //console.log(car);
        res.send(JSON.stringify(car));
    }))
})


router.post('/addHoaDon', mw.isLoggedInUser, (req, res) => {
    let arrXe = req.body['arrXe'];
    let arrSL = req.body['arrSL'];
    //console.log(arrXe);
    let ds_IDXe = arrXe.split(",");
    let ds_IDSL = arrSL.split(",");
    //var MaHoaDon;
    Bill.getMaxIdBill().then(row => {
        console.log(row[0].RowDataPacket.MAX(MaHoaDon));
        // Bill.addBill(row[0].RowDataPacket.MAX(MaHoaDon)).then()
    })


    console.log("Them hoa don thanh cong");
    res.redirect('/cart');

});

module.exports = router;