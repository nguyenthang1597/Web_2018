const db = require('../../config/mysql')

exports.loadAll = () => {
    return db('select * from cart');
}