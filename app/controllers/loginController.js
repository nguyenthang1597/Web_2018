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
		failureFlash: true
	}),(req,res) => {
		var url = '/'
		if(req.user.isAdmin === 0) {
			if(req.query.retUrl) {
				url = req.query.retUrl;
			}
		}
		else {
			url = '/admin'
		}
		res.redirect(url);
	}
);

router.get('/loginOK', (req, res) => {
	if (req.isAuthenticated())
		res.send("Dang nhap thanh cong");
	else
		res.send("Ban chua login");
})

module.exports = router;
