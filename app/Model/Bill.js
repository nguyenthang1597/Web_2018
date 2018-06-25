const db = require('../../config/mysql');

var Bill = {
    loadAllBill: () => {
        return db(`select hoadon.MaHoaDon as Id, khachhang.Ten as TenKhachHang, chitiethoadon.TinhTrang as TinhTrang, DATE_FORMAT(chitiethoadon.NgayMua,'%d/%m/%y') as NgayMua
        from hoadon
            inner join chitiethoadon on hoadon.MaHoaDon = chitiethoadon.MaHoaDon
            inner join khachhang on chitiethoadon.IdKH = khachhang.Id`)
    },
    deleteById: (id) => {
        return db(`delete from hoadon where Id = ${id}`)
    },
    getBillById: (id) => {
        return db(`select hoadon.MaHoaDon as ID, hoadon.IdKH as IdKH, khachhang.Ten as TenKhachHang, khachhang.DiaChi as DiaChiGiao,
        khachhang.SDT as SDT, khachhang.Email as Email, hoadon.TinhTrang as TinhTrang, hoadon.IdSP as IdSP, sanpham.TenSP as TenSP,
        hoadon.SoLuong as SoLuongMua, sanpham.GiaBan as GiaBan, sanpham.MoTa as Mota, sanpham.XuatXu as XuatXu
        from hoadon
            inner join khachhang on hoadon.IdKH = khachhang.Id
            inner join sanpham on sanpham.Id = hoadon.IdSP`)
    }
}

module.exports = Bill