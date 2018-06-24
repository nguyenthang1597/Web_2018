const express = require('express');
const router = express.Router();
const restrict = require('../../middle-wares/restrict.js');
const LoginController = require('./loginController');
const mw = require('../../middle-wares/middlewares')
const SignupControler = require('./signupControler');
var SP = require('../Model/SanPham.js');
var config = require('../../config/config');

router.get('/login', mw.LoggedUser, LoginController.loginForm);
router.get('/signup',SignupControler.formSignUp);

router.post('/login',mw.LoggedUser, LoginController.userLogin);
router.post('/signup',SignupControler.userSignUp);
router.get('/logout',LoginController.userLogout)
router.get('/timkiem',(req,res)=>{
	res.render('user/timkiem');
})
router.get("/",(req,res)=> {
	SP.loadAll().then(rows => {
		var vm = {
			moinhat: rows[0],
			phobien: rows[1],
			xemnhieu:rows[2],
		};
		res.render('index', vm);
	});
});
router.get('/LoaiXe/:Id',(req,res)=>{
	var Id =req.params.Id;
	var page = req.query.page;
	if (!page) {
		page = 1;
	}
	var offset = (page - 1) * config.PER_PAGE;
	var p1 = SP.LoadLoaiXe(Id,offset);
	var p2 = SP.countLoaiXe(Id);
	Promise.all([p1, p2]).then(([pRows, countRows]) => {
		var total = countRows[0].total;
		var nPages = total / config.PER_PAGE;
		if (total % config.PER_PAGE > 0) {
			nPages++;
		}

		var numbers = [];
		for (i = 1; i <= nPages; i++) {
			numbers.push({
				value: i,
				isCurPage: i === +page
			});
		}

		var vm = {
			sanpham: pRows,
			noProducts: pRows.length === 0,
			page_numbers: numbers
		};
		res.render('user/sanpham', vm);
	});
});
router.get('/HangXe/:Id',(req,res)=>{
	var Id =req.params.Id;
	var page = req.query.page;
	if (!page) {
		page = 1;
	}
	var offset = (page - 1) * config.PER_PAGE;
	var p1 = SP.LoadHangXe(Id,offset);
	var p2 = SP.countHangXe(Id);
	Promise.all([p1, p2]).then(([pRows, countRows]) => {
		var total = countRows[0].total;
		var nPages = total / config.PER_PAGE;
		if (total % config.PER_PAGE > 0) {
			nPages++;
		}

		var numbers = [];
		for (i = 1; i <= nPages; i++) {
			numbers.push({
				value: i,
				isCurPage: i === +page
			});
		}

		var vm = {
			sanpham: pRows,
			noProducts: pRows.length === 0,
			page_numbers: numbers
		};
		res.render('user/sanpham', vm);
	});
})
 router.get('/XemChiTiet/:Id',(req,res)=>{
	var id = req.params.Id;
	let CungLoai,CungHang,SanPham;
	SP.getById(id).then(rows=>{
		SanPham = rows[0];
		return SP.LoadLoaiXe(SanPham.LoaiXe,0);
	}).then(rows=>{
		CungLoai = rows;
		return SP.LoadHangXe(SanPham.HangXe,0)
	}).then(rows=>{
		var vm ={
			sp:SanPham,
			SPLoai:CungLoai,
			SPNSX: rows,
		}
		res.render('user/xemchitiet',vm);
	})
})
module.exports = router;