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
        return db(`select IdSP,TenSP,SL,DonGia,XuatXu
        from hoadon
            inner join sanpham on hoadon.IdSP = sanpham.Id`)
    },
    getInfoById: (id) => {
        return db(`select hoadon.MaHoaDon as MaHoaDon, khachhang.Ten as TenKhachHang,
        IdKH,DiaChi,SDT,Email,TongTien,TinhTrang
        from hoadon
            inner join chitiethoadon on chitiethoadon.MaHoaDon = hoadon.MaHoaDon
            inner join khachhang on IdKH = khachhang.Id`)
    }
}

module.exports = Bill