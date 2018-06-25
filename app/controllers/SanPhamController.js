var express = require('express');
var SP = require('../Model/SanPham.js')
var router = express.Router();
router.get("/", (req, res) => {
    SP.loadAll().then(rows => {
        var vm = {
            moinhat: rows[0],
            phobien: rows[1],
            xemnhieu: rows[2],
        };
        res.render('index', vm);
    });
});
module.exports = router;
