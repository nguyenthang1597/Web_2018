var express = require("express");
var passport = require('passport');

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
				return res.redirect('/admin/dashboard');
			})
		})(req, res, next)
	},
	adminLogout: (req, res) => {
		req.logout();
		if (!req.session.cookie.expires)
			req.session.destroy();
		res.redirect('/admin');
	},
	userLogin: (req, res,next) => {
		passport.authenticate('local-login', (err, user, info) => {
			if (err) return next(err);
			if (!user) return res.redirect('/login');
			req.logIn(user, (err) => {
				if (err) return next(err);
				req.session.user = user;
				var url = '/'
				if (req.user.isAdmin === 0) {
					if (req.query.retUrl) {
						url = req.query.retUrl;
					}
				} else {
					url = '/'
				}
				return res.redirect(url);
			})
		})(req, res, next)
	},
	loginForm: (req, res) => {
		var vm = {
			layout: false,
			showError: req.flash('error')
		}
		res.render("user/login", vm)
	},
	userLogout: (req,res,next) => {
		req.logout();
		if (!req.session.cookie.expires)
			req.session.destroy();
		res.redirect('/');
	}
}


module.exports = LoginController;
