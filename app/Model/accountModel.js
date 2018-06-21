var db = require('../../config/mysql')

exports.loadAll=()=>{
	return db('select * from account);
}