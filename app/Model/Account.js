const db = require('../../config/mysql');

module.exports = {
<<<<<<< HEAD
    
=======
    loadAllUserAccount: () => {
        return db('select * from account where isAdmin = 0');
    },
    deleteById: (id)=> {
        return db(`delete from account where id = ${id}`);
    }
>>>>>>> origin/thanh_ck
}