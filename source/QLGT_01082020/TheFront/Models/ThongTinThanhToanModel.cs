using System;
using System.Collections.Generic;

namespace TheFront.Models
{
    public class ThongTinThanhToanModel
    {
        public int id { get; set; }
        public DateTime thoiGianThanhToan { get; set; }
        public string noiDungThanhToan { get; set; }
        public string trangThaiThanhToan { get; set; }
        public virtual ChuPhuongTienModel chuPhuongTien { get; set; } = new ChuPhuongTienModel();
        public virtual ThongTinLichHenModel thongTinLichHen { get; set; } = new ThongTinLichHenModel();

    }
}
