var express = require("express");

var router = express.Router();

router.get('/',(req,res) => {
    var vm = {
        layout : false
    }
    res.render('user/signup',vm);
})

module.exports = router;