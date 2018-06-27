const db = require('../../config/mysql');

module.exports = {
    add: (info, cb) => {
        db(`insert into picture (MaXe, picture) values ('${info.MaXe}','${info.picture}')`)
        .then(result => {
            cb(null, result);
        })
        .catch(err => {
            cb(err, null);
        })
    },
    getById: (Id) => {
        return db(`select picture from picture where MaXe = '${Id}'`);
    }
}