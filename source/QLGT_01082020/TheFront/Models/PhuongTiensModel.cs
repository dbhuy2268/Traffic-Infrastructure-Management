using System.Collections.Generic;

namespace TheFront.Models
{
    public class PhuongTiensModel
    {
        public int id { get; set; }
        public string nhanHieu { get; set; }
        public string loaiPhuongTien { get; set; }
        public string soKhung { get; set; }
        public string soMay { get; set; }
        public string kichThuocBao { get; set; }
        public string khoiLuongBanThan { get; set; }
        public string soNguoiChoPhepCho { get; set; }
        public string soTruc_ChieuDaiCoSo { get; set; }
        public string kichThuocThungHang { get; set; }
        public string khoiLuongHangChoPhep { get; set; }
        public string khoiLuongTongChoPhep { get; set; }
        public string khoiLuongRomooc { get; set; }
        public string thongBaoDanhChoPhuongTien { get; set; }
        public virtual ICollection<ThongTinDangKiemsModel> ThongTinDangKiems { get; set; } = new HashSet<ThongTinDangKiemsModel>();
        //public virtual ICollection<ThongTinLichHen> ThongTinLichHens { get; set; } = new HashSet<ThongTinLichHen>();

    }
}
