const db = require('../../config/mysql');

module.exports = {
    getAll: () => {
        return db('select * from hangxe');
    },
    getOneById: (id) => {
        return db(`select * from hangxe where Id = ${id}`);
    },
    updateById: (id, catalog) => {
        return db(`update hangxe set TenHang = '${catalog.TenHang}', Pic = '${catalog.Pic}', isHide = '${catalog.isHide}' where Id = '${id}'`);
    },
    add: (catalog) => {
        return db(`insert into hangxe (TenHang, Pic, isHide) values ('${catalog.TenHang}', '${catalog.Pic}', '0')`);
    },
    deleteById: (Id) => {
        return db(`delete from hangxe where Id = '${Id}'`);
    },
    visible: (info) => {
        return db(`update hangxe set isHide = '${info.isHide}' where Id = '${info.Id}'`);
    }
}