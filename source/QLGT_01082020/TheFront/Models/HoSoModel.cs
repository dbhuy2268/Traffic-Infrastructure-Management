using System;

namespace TheFront.Models
{
    public class HoSoModel
    {
        public int id { get; set; }
        public string MaHoSo { get; set; }
        public string LoaiHoSo { get; set; }
        public string MoTaChiTiet { get; set; }
        public string NoiCap { get; set; }
        public string DiaChiLuu { get; set; }
        public ChuPhuongTienModel ChuPhuongTien { get; set; }
    }
}
