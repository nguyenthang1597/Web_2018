const db = require('../../config/mysql');

module.exports = {
    loadAllUserAccount: () => {
        return db('select * from account where isAdmin = 0');
    },
    loadUserById: (id)=> {
        console.log("Loaded user by id: " + id);
        return db(`select * from account where id = ${id}`);
    },
    deleteById: (id)=> {
        return db(`delete from account where id = ${id}`);
    }
}