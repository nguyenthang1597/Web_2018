var db = require('../../config/mysql')

exports.loadAll=()=>{
	var sql = 'select * from sanpham order by NgayNhap limit 10;select * from sanpham order by SLBan limit 10;select * from sanpham order by LuotXem limit 10';
	return db.load(sql);
}