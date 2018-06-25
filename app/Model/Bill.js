const db = require('../../config/mysql');

var Bill = {
    loadAllBill: () => {
        return db(`select hoadon.MaHoaDon as Id, khachhang.Ten as TenKhachHang,hoadon.TinhTrang as TinhTrang, DATE_FORMAT(hoadon.NgayMua,'%d/%m/%y')as NgayMua
                    from hoadon
                        inner join khachhang on hoadon.IdKH = khachhang.Id`)
    },
    deleteById: (id) => {
        return db(`delete from hoadon where Id = ${id}`)
    }
}

module.exports = Bill