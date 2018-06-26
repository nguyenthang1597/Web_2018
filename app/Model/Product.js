const db = require('../../config/mysql');

module.exports = {
    getAll: () => {
        return db('select sanpham.*, (sanpham.SoLuong - sanpham.SLBan) as SoLuongConLai, hangxe.TenHang as TenHangXe, loaixe.TenLoai as TenLoaiXe from sanpham, hangxe, loaixe where sanpham.HangXe = hangxe.Id and sanpham.LoaiXe = loaixe.Id');
    },
    visible: (info) => {
        return db(`update sanpham set isHide = '${info.isHide}' where Id = '${info.Id}'`);
    },
    deleteById: (Id) => {
        return db(`delete from sanpham where Id = '${Id}'`);
    },
    getOneById: (Id) => {
        return db(`select sanpham.*, (sanpham.SoLuong - sanpham.SLBan) as SoLuongConLai, hangxe.TenHang as TenHangXe, loaixe.TenLoai as TenLoaiXe from sanpham, hangxe, loaixe where sanpham.HangXe = hangxe.Id and sanpham.LoaiXe = loaixe.Id and sanpham.Id = '${Id}'`);
    },
    updateById: (Id, info) => {
        return db(`update sanpham set TenSP = '${info.TenSP}', HangXe = '${info.HangXe}', LoaiXe = '${info.LoaiXe}', MoTa = '${info.MoTa}', ChiTiet = '${info.ChiTiet}', GiaBan = '${info.GiaBan}', SoLuong = '${info.SoLuong}', XuatXu = '${info.XuatXu}', isHide = '${info.isHide}', HinhAnh = '${info.HinhAnh}' where Id = '${Id}'`);
    },
    add: (product) => {
        return db(`insert into sanpham (HangXe, TenSP, LoaiXe, GiaBan, SoLuong, NgayNhap, HinhAnh, MoTa, ChiTiet, XuatXu) values ('${product.HangXe}', '${product.TenSP}', '${product.LoaiXe}', '${product.GiaBan}', '${product.SoLuong}', '${product.NgayNhap}', '${product.HinhAnh}', '${product.MoTa}', '${product.ChiTiet}', '${product.XuatXu}')`);
    }
}