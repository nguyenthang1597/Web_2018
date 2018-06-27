var db = require('../../config/mysql')

exports.loadAll = () => {
	var sql = 'select * from loaixe; select * from hangxe where isHide=0';
	return db(sql);
}