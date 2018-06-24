var db = require('../../config/mysql')
var config = require('../../config/config');
exports.loadAll=()=>{
	return db('select * from sanpham order by NgayNhap desc limit 10;select * from sanpham order by SLBan desc limit 10;select * from sanpham order by LuotXem desc limit 10');
}
exports.LoadLoaiXe = (id,offset)=>{
	var sql = `select * from sanpham where LoaiXe = ${id} limit ${config.PER_PAGE} offset ${offset}`;
	return db(sql);
}
exports.LoadHangXe = (id,offset)=>{
	var sql = `select * from sanpham where HangXe = ${id} limit ${config.PER_PAGE} offset ${offset}`;
	return db(sql);
}
exports.countLoaiXe = (id)=>{
	var sql = `select count(*) as total from sanpham where LoaiXe = ${id}`;
	return db(sql);
}
exports.countHangXe = (id)=>{
	var sql = `select count(*) as total from sanpham where HangXe = ${id}`;
	return db(sql);
}
exports.getById=id=>{
	var sql = `select * from sanpham,loaixe,hangxe where sanpham.Id = ${id} and sanpham.LoaiXe = loaixe.Id and sanpham.HangXe=hangxe.Id;`;
	return db(sql);
}
exports.timkiem=id=>{
	var sql = `select * from sanpham,loaixe,hangxe where sanpham.Id = ${id} and sanpham.LoaiXe = loaixe.Id and sanpham.HangXe=hangxe.Id;`;
	return db(sql);
}
