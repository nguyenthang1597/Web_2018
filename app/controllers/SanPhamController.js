var express = require('express');
var config = require('../../config/config');
var SP = require('../Model/SanPham.js');
var router = express.Router();
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
module.exports=router;
