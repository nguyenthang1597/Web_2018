var db = require('../../config/mysql')

exports.loadAll=()=>{
	var sql = 'select top 10 from sanpham order by NgayNhap';
	return db.load(sql);
}