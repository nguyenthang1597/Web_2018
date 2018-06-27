const db = require('../../config/mysql');

module.exports = {
    getAll: () => {
        return db('select * from loaixe');
    },
    add: (category) => {
        return db(`insert into loaixe (TenLoai, isHide) values ('${category.TenLoai}', '0')`);
    },
    getOneById: (Id) => {
        return db(`select * from loaixe where Id = '${Id}'`);
    },
    updateById: (Id, category) => {
        return db(`update loaixe set TenLoai = '${category.TenLoai}', isHide = '${category.isHide}' where Id = '${Id}'`);
    },
    deleteById: (Id) => {
        return db(`delete from loaixe where Id = '${Id}'`);
    },
    visible: (info) => {
        return db(`update loaixe set isHide = '${info.isHide}' where Id = '${info.Id}'`);
    }
}