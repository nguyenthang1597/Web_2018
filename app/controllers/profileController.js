const express = require('express');
const restrict = require('../../middle-wares/restrict.js');
const mw = require('../../middle-wares/middlewares')
const accountModel = require('../Model/Account');
const router = express.Router();

router.get('/', mw.isLoggedInUser, (req, res) => {
    let username = req.session.user.username;
    accountModel.loadUserByUsername(username).then(row => {
        let vm = {
            user: row[0]
        }
        console.log(vm);
        res.render('user/profile', vm);
       
    })

    //res.send("Profile !!!");
});


module.exports = router;
