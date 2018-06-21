var mysql = require('mysql')

module.exports = (sql) => {
	return new Promise((resolve, reject) => {
		const cn = mysql.createConnection({
			host: 'localhost',
			user: 'root',
			password: '',
			database: 'banoto'
		})

		cn.connect((err) => {
			if(err)
				reject(err);
			else{
				cn.query(sql, (err, result, fields) => {
					if(err){
						cn.end();
						reject(err);
					} else {
						resolve(result);
						cn.end();
					}
				})
			}
		})
	});
}