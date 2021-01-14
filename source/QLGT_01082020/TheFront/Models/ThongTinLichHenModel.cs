using System;
using System.Collections.Generic;

namespace TheFront.Models
{
    public class ThongTinLichHenModel
    {
        public int id { get; set; }
        public string bienSoXe { get; set; }
        public string soKhung { get; set; }
        public string soMay { get; set; }
        public DateTime ngayDangKy { get; set; }
        public string tenNguoiDangKy { get; set; }
        public string soDienThoai { get; set; }
        public string CMND { get; set; }
        public DateTime khungGio { get; set; }
        public bool trangThaiXetDuyet { get; set; }

        public virtual ICollection<DichVuDangKyModel> DichVuDangKies { get; set; } = new HashSet<DichVuDangKyModel>();

    }
}
