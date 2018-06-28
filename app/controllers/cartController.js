const express = require('express');
const cartModel = require('../Model/cartModel.js');
const mw = require('../../middle-wares/middlewares');
const accountModel = require('../Model/Account');
var db = require('../../config/mysql');
const router = express.Router();
const Product = require('../Model/Product');
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
module.exports = router;