const db = require('../../config/mysql');

module.exports = {
    countByCatalog: (callback) => {
        db('select hangxe.TenHang, sum(sanpham.SLBan) as SLBan, sum(sanpham.SoLuong) as TongSL from sanpham, hangxe where sanpham.HangXe = hangxe.Id group by hangxe.Id, hangxe.TenHang, sanpham.HangXe')
        .then(result => {
            return callback(null, result);
        })
        .catch(err => {
            return callback(err, null);
        })
    },
    countByCategory: (callback) => {
        db('select loaixe.TenLoai, sum(sanpham.SLBan) as SLBan, sum(sanpham.SoLuong) as TongSL from sanpham, loaixe where sanpham.LoaiXe = loaixe.Id group by loaixe.Id, loaixe.TenLoai, sanpham.Loaixe')
        .then(result => {
            return callback(null, result);
        })
        .catch(err => {
            return callback(err, null);
        })
    }
}