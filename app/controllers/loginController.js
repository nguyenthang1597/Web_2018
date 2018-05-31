var express = require("express");
var passport = require('passport');
var router = express.Router();

router.get("/",(req,res)=> {
	var vm = {
		layout:false,
	}
	res.render("user/login",vm)
});

router.post('/',passport.authenticate('local-login',{failureRedirect:'/login',successRedirect:'/login/loginOK'
}));

router.get('/loginOK',(req,res) => {
	res.send("Dang nhap thanh cong");
})

module.exports = router;
