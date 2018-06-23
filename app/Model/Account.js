const db = require('../../config/mysql');

module.exports = {
    loadAllUserAccount: () => {
        return db('select * from account where isAdmin = 0');
    }
}