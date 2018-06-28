const db = require('../../config/mysql');
const moment = require('moment')

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
    },
    loadProfileUserById: (id) => {
        return db(`select * from khachhang where id = ${id}`);
    },
    updateProfileUser: (data) => {
        return db(`update khachhang set Ten = '${data.Ten}',Email = '${data.Email}',SDT ='${data.SDT}',NgaySinh = '${moment(data.NgaySinh).format('YYYY/MM/DD')}',DiaChi = '${data.DiaChi}',CMND = '${data.CMND}' where Id = '${data.id}'`)
    }
}