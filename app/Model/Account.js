const db = require('../../config/mysql');

module.exports = {
    loadAllUserAccount: () => {
        return db('select * from account where isAdmin = 0');
    },
    loadUserById: (id) => {
        return db(`select * from account where id = ${id}`);
    },
    loadUserByUsername: (username) => {
        return db(`select * from account where username = '${username}'`);
    },
    deleteById: (id) => {
        return db(`delete from account where id = ${id}`);
    }
}