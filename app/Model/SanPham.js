var db = require('../../config/mysql')
var config = require('../../config/config');
exports.loadAll=()=>{
	return db('select * from sanpham where isHide=0 order by NgayNhap desc , SLBan desc, LuotXem desc limit 10 ;select * from sanpham where isHide=0 order by SLBan desc limit 10;select * from sanpham where isHide=0 order by LuotXem desc limit 10');
}
exports.LoadLoaiXe = (id,offset)=>{
	var sql = `select * from sanpham where (LoaiXe = ${id} and isHide=0) limit ${config.PER_PAGE} offset ${offset}  `;
	return db(sql);
}
exports.LoadHangXe = (id,offset)=>{
	var sql = `select * from sanpham where (HangXe = ${id} and isHide=0) limit ${config.PER_PAGE} offset ${offset} `;
	return db(sql);
}
exports.countLoaiXe = (id)=>{
	var sql = `select count(*) as total from sanpham where (LoaiXe = ${id} and isHide=0)`;
	return db(sql);
}
exports.countHangXe = (id)=>{
	var sql = `select count(*) as total from sanpham where (HangXe = ${id} and isHide=0)`;
	return db(sql);
}
exports.getById=id=>{
	var sql = `select * from sanpham,loaixe,hangxe where sanpham.Id = ${id} and sanpham.LoaiXe = loaixe.Id and sanpham.HangXe=hangxe.Id and sanpham.isHide=0;`;
	return db(sql);
}
exports.timkiem=(tenloai,tenxe,hangxe,min,max,offset)=>{
	var sql = `select *  from sanpham where ((LoaiXe = ${tenloai} or TenSP like "%${tenxe}%" or HangXe=${hangxe} or (GiaBan >= ${min} and GiaBan <=${max})) and isHide=0 ) limit 5 offset ${offset}`;
	return db(sql);
}
exports.counttimkiem=(tenloai,tenxe,hangxe,min,max)=>{
	var sql = `select count(*) as total from sanpham where LoaiXe = ${tenloai} or TenSP like "%${tenxe}%" or HangXe=${hangxe} or (GiaBan >= ${min} and GiaBan <=${max}) and isHide=0`;
	return db(sql);
}
exports.loadpic=(id)=>{
	var sql = `select * from picture where MaXe = ${id} `;
	return db(sql);
}
exports.updateLuotXem=(id)=>{
	var sql = `update sanpham set LuotXem = LuotXem + 1 where Id = ${id} `;
	return db(sql);
}
exports.loadhoadon=(id)=>{
	var sql = `select * from chitiethoadon where chitiethoadon.IdKH=${id} order by chitiethoadon.NgayMua desc `;
	return db(sql);
}
exports.chitiethoadon=(id)=>{
	var sql = `select * from hoadon, sanpham where hoadon.MaHoaDon=${id} and hoadon.IdSP=sanpham.Id `;
	return db(sql);
}
