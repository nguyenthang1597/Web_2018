var express = require("express");
var passport = require('passport');
var router = express.Router();

const LoginController = {
	formAdminLogin: (req, res) => {
		res.render('admin/login', {
			layout: false,
			message: req.flash('loginMessage')
		})
	},
	adminLogin: (req, res, next) => {
		passport.authenticate('local-admin-login', (err, user, info) => {
			if (err) return next(err);
			if (!user) return res.redirect('/admin');
			req.logIn(user, (err) => {
				if (err) return next(err);
				req.session.user = user;
				req.session.cookie.originalMaxAge = 1000 * 60;
				return res.redirect('/admin/dashboard');
			})
		})(req, res, next)
	},
	adminLogout: (req, res) => {
		req.logout();
        if (!req.session.cookie.expires)
            req.session.destroy();
        res.redirect('/admin');
	}
}


module.exports = LoginController;


// router.get("/", (req, res) => {
// 	var vm = {
// 		layout: false,
// 		showError: req.flash('error')
// 	}
// 	res.render("user/login", vm)
// });

// router.post('/',
// 	passport.authenticate('local-login', {
// 		failureRedirect: '/login',
// 		failureFlash: true
// 	}), (req, res) => {
// 		var url = '/'
// 		if (req.user.isAdmin === 0) {
// 			if (req.query.retUrl) {
// 				url = req.query.retUrl;
// 			}
// 		} else {
// 			url = '/admin'
// 		}
// 		res.redirect(url);
// 	}
// );

// router.get('/loginOK', (req, res) => {
// 	if (req.isAuthenticated())
// 		res.send("Dang nhap thanh cong");
// 	else
// 		res.send("Ban chua login");
// })

// module.exports = router;
