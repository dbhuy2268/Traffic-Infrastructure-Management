using System;
using System.Collections.Generic;

namespace TheFront.Models
{
    public class DichVuDangKyModel
    {
        public int id { get; set; }
        public int tongGia { get; set; }
        public int soLuong { get; set; }
        public virtual ThongTinLichHen ThongTinLichHen { get; set; } = new ThongTinLichHen();
        public virtual DichVuModel DichVu { get; set; } = new DichVuModel();
    }
}
