var express = require("express");
var passport = require('passport');
var router = express.Router();

router.get("/", (req, res) => {
	var vm = {
		layout: false,
		showError: req.flash('error')
	}
	res.render("user/login", vm)
});

router.post('/',
	passport.authenticate('local-login', {
		failureRedirect: '/login',
		successRedirect: '/',
		failureFlash: true
	})
);

router.get('/loginOK', (req, res) => {
	if (req.isAuthenticated())
		res.send("Dang nhap thanh cong");
	else
		res.send("Ban chua login");
})

module.exports = router;
