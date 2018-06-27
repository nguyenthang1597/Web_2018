const express = require('express');
const router = express.Router();
const restrict = require('../../middle-wares/restrict.js');
const mw = require('../../middle-wares/middlewares')
var SP = require('../Model/SanPham.js');
var config = require('../../config/config');
var url = require('url');
const LoginController = require('../controllers/LoginController');
const SignupControler = require('../controllers/SignupControler');
const Picture = require('../Model/Picture')

router.get('/login', mw.LoggedUser, LoginController.loginForm);
router.get('/signup', SignupControler.formSignUp);

router.post('/login', mw.LoggedUser, LoginController.userLogin);
router.post('/signup', SignupControler.userSignUp);
router.get('/logout', LoginController.userLogout);

function phantrang(total, perpage, page) {
	var nPages = total / perpage;
	if (total % perpage > 0) {
		nPages++;
	}
	var numbers = [];
	for (i = 1; i <= nPages; i++) {
		numbers.push({
			value: i,
			isCurPage: i === +page
		});
	}
	return numbers;
}
router.get('/timkiem', (req, res) => {
	var tenloai = req.query.tenloai;
	var tenxe = req.query.tenxe;
	var hangxe = req.query.hangxe;
	var min = req.query.min;
	var max = req.query.max;
	if (!min) {
		min = 0;
	}
	if (!tenxe) {
		tenxe = null;
	}
	if (!max) {
		max = 0;
	}
	if (!tenloai || !hangxe) {
		return res.render('user/timkiem', {
			noProducts: true
		});
	}
	var page = req.query.page;
	if (!page) {
		page = 1;
	}
	var offset = (page - 1) * 5;
	var p1 = SP.timkiem(tenloai, tenxe, hangxe, min, max, offset);
	var p2 = SP.counttimkiem(tenloai, tenxe, hangxe, min, max);
	Promise.all([p1, p2]).then(([pRows, countRows]) => {
		var total = countRows[0].total;
		var numbers = phantrang(total, 5, page);
		var vm = {
			sp: pRows,
			noProducts: pRows.length === 0,
			page_numbers: numbers
		}
		res.render('user/timkiem', vm);
	})
})
router.get("/", (req, res) => {
	SP.loadAll().then(rows => {
		//console.log(rows);
		var vm = {
			moinhat: rows[0],
			phobien: rows[1],
			xemnhieu: rows[2],
		};
		res.render('index', vm);
	});
});
router.get('/LoaiXe/:Id', (req, res) => {
	var Id = req.params.Id;
	var page = req.query.page;
	if (!page) {
		page = 1;
	}
	var offset = (page - 1) * config.PER_PAGE;
	var p1 = SP.LoadLoaiXe(Id, offset);
	var p2 = SP.countLoaiXe(Id);
	Promise.all([p1, p2]).then(([pRows, countRows]) => {
		var total = countRows[0].total;
		var numbers = phantrang(total, config.PER_PAGE, page);
		var vm = {
			sanpham: pRows,
			noProducts: pRows.length === 0,
			page_numbers: numbers
		};
		res.render('user/sanpham', vm);
	});
});
router.get('/HangXe/:Id', (req, res) => {
	var Id = req.params.Id;
	var page = req.query.page;
	if (!page) {
		page = 1;
	}
	var offset = (page - 1) * config.PER_PAGE;
	var p1 = SP.LoadHangXe(Id, offset);
	var p2 = SP.countHangXe(Id);
	Promise.all([p1, p2]).then(([pRows, countRows]) => {
		var total = countRows[0].total;
		var numbers = phantrang(total, config.PER_PAGE, page);
		var vm = {
			sanpham: pRows,
			noProducts: pRows.length === 0,
			page_numbers: numbers
		};
		res.render('user/sanpham', vm);
	});
})
router.get('/XemChiTiet/:Id', (req, res) => {
	var id = req.params.Id;
	let CungLoai, CungHang, SanPham, pic, subPic;
	SP.getById(id).then(rows => {
		SanPham = rows[0];
		return SP.loadpic(SanPham.Id)
	}).then(rows => {
		pic = rows;
		return SP.LoadLoaiXe(SanPham.LoaiXe, 0);
	}).then(rows => {
		CungLoai = rows;
		return SP.LoadHangXe(SanPham.HangXe, 0)
	}).then(rows => {
		return Picture.getById(req.params.Id)
	})
	.then(rows => {
		subPic = rows;
		//console.log(subPic);
		var vm = {
			sp: SanPham,
			SPLoai: CungLoai,
			SPNSX: rows,
			img: subPic,
		}
		res.render('user/xemchitiet', vm);
	})
	.then(rows => {
		return SP.updateLuotXem(id);
	})
})
router.get('/lichsu', mw.isLoggedInUser, (req, res) => {
	SP.loadhoadon(req.user.id).then(rows => {
		var vm = {
			hoadon: rows,
		}
		res.render('user/lichsu', vm);
	})
})
router.get('/chitietdonhang/:id', mw.isLoggedInUser, (req, res) => {
	var id = req.params.id;
	var p1 = SP.chitiethoadon(id);
	var p2 = SP.loadhoadon(req.user.id);
	Promise.all([p1, p2]).then(([row1, row2]) => {
		var vm = {
			sp: row1,
			hoadon: row2[0],
		};
		res.render('user/chitietdonhang', vm);
	});
})
module.exports = router;