const db = require('../../config/mysql');
const moment = require('moment');

var Bill = {
    loadAllBill: () => {
        return db(`select distinct hoadon.MaHoaDon as Id, khachhang.Ten as TenKhachHang, hoadon.TinhTrang as TinhTrang, DATE_FORMAT(hoadon.NgayBan,'%d/%m/%y') as NgayMua
        from hoadon
            inner join chitiethoadon on hoadon.MaHoaDon = chitiethoadon.MaHoaDon
            inner join khachhang on hoadon.IdKH = khachhang.Id`)
    },
    deleteById: (id) => {
        return db(`delete from hoadon where Id = ${id}`)
    },
    getBillById: (id) => {
        return db(`select chitiethoadon.IdSP, sanpham.TenSP, chitiethoadon.SL, sanpham.GiaBan, sanpham.XuatXu
        from hoadon, chitiethoadon, sanpham
        where hoadon.MaHoaDon = '${id}' and chitiethoadon.MaHoaDon = hoadon.MaHoaDon and sanpham.Id = chitiethoadon.IdSP`)
    },
    getInfoById: (id) => {
        return db(`select distinct hoadon.MaHoaDon as MaHoaDon, khachhang.Ten as TenKhachHang,
        IdKH,DiaChi,SDT,Email,TongTien,TinhTrang
        from hoadon
            inner join chitiethoadon on chitiethoadon.MaHoaDon = hoadon.MaHoaDon
            inner join khachhang on IdKH = khachhang.Id
        where hoadon.MaHoaDon = ${id}`)
    },
    updateTinhTrang: (id,tinhtrang) =>{
        return db(`update hoadon set TinhTrang = '${tinhtrang}' where MaHoaDon = '${id}'`)
    },
    addBill: (IdKH) => {
        return db(`insert into hoadon (IdKH, TinhTrang,NgayBan) VALUES ('${IdKH}','0','${moment(new Date()).format('YYYY/MM/DD')}')`)
    },
    addBillInfo: (id,ds_IdSP,ds_SL)=> {
        let length = ds_IdSP.length
        var sql = ``;
        for(var i =0;i<length;i++) {
            sql += `insert into chitiethoadon (MaHoaDon,IdSP,SL) VALUES ('${id}','${ds_IdSP[i]}','${ds_SL[i]}');`
        }
        return db(sql);
    },
    TinhTongTien: (id) => {
        return db(`select sum(chitiethoadon.SL * sanpham.GiaBan) as TongTien from chitiethoadon,sanpham where chitiethoadon.IdSP = sanpham.Id and chitiethoadon.MaHoaDon = '${id}'`)
    },
    updateTongTien: (id,TongTien) => {
        return db(`update hoadon set TongTien = '${TongTien}' where MaHoaDon = '${id}'`)
    }

}

module.exports = Bill