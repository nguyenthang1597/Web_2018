var mysql = require('mysql')
require('dotenv').config();

exports.load = sql => {
	return new Promise((resolve, reject) => {
		var cn = mysql.createConnection({
			host: 'localhost',
			user: 'root',
			password: '',
			database: 'banoto',
			multipleStatements: true
		});

		cn.connect();

		cn.query(sql, function(error, rows, fields) {
			if (error) {
				reject(error);
			} else {
				resolve(rows);
			}

			cn.end();
		});
	});
}

exports.save = sql => {
	return new Promise((resolve, reject) => {
		var cn = mysql.createConnection({
			host: 'localhost',
			user: 'root',
			password: '',
			database: 'banoto',
			multipleStatements: true
		});

		cn.connect();

		cn.query(sql, function(error, value) {
			if (error) {
				reject(error);
			} else {
				resolve(value);
			}

			cn.end();
		});
	});
}