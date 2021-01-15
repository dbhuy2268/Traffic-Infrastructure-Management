using System;
using System.Collections.Generic;

namespace TheFront.Models
{
    public class YeuCauXinModel
    {
        public int id { get; set; }
        public string TenChuSoHuu { get; set; }
        public string CMND_HoChieu { get; set; }
        public DateTime NgayCap_CMND_HoChieu { get; set; }
        public string DiaChiThuongTru { get; set; }
        public string SDT { get; set; }
        public string LoaiTaiSan { get; set; }
        public string SoLoai { get; set; }
        public string LoaiXe { get; set; }
        public string NhanHieu { get; set; }
        public string MauSon { get; set; }
        public string NamSanXuat { get; set; }
        public string XiLanh { get; set; }
        public string SoKhung { get; set; }
        public string SoMay { get; set; }
        //public string MaYeuCau { get; set; }
        public int DaXetDuyet { get; set; }

        public virtual ICollection<HoSoModel> HoSo { get; set; } = new HashSet<HoSoModel>();
    }
}
