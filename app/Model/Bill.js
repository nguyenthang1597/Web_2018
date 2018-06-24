const db = require('../../config/mysql');

var Bill = {
    loadAllBill: () => {
        return db(`select hoadon.Id as Id, khachhang.Ten as TenKhachHang, hoadon.SoLuong as SoLuong,sanpham.TenSP as TenSP, hoadon.TongTien as TongTien,hoadon.TinhTrang as TinhTrang
                    from hoadon
                        inner join khachhang on hoadon.IdKH = khachhang.Id
                        inner join sanpham on hoadon.IdSP = sanpham.Id`)
    },
    deleteById: (id) => {
        return db(`delete from hoadon where Id = ${id}`)
    }
}

module.exports = Bill