var db = require('../../config/mysql')

exports.loadAll=()=>{
	var sql = 'select * from loaixe; select * from hangxe';
	return db('select * from loaixe; select * from hangxe');
}