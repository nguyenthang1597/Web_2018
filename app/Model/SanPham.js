var db = require('../../config/mysql')

exports.loadAll=()=>{
	return db('select * from sanpham order by NgayNhap desc limit 10;select * from sanpham order by SLBan desc limit 10;select * from sanpham order by LuotXem desc limit 10');
}