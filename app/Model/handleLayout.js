var db = require('../../config/mysql')

exports.loadAll = () => {
	var sql = 'select * from loaixe where isHide=0; select * from hangxe where isHide=0';
	return db(sql);
}