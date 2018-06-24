const db = require('../../config/mysql');

var Bill = {
    loadAllBill: () => {
        return db('select * from hoadon')
    }
}

module.exports = Bill