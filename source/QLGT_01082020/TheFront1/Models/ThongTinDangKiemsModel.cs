using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TheFront1.Models
{
    public class ThongTinDangKiemsModel
    {
        public int id { get; set; }
        public string trangThaiDangKiem { get; set; }
        public DateTime ngayDangKiem { get; set; }
        public string GCN { get; set; }
        public DateTime ngayHetHanGCN { get; set; }
        public string donViKiemDinh { get; set; }
        public virtual PhuongTiensModel phuongTien { get; set; } = new PhuongTiensModel();

    }
}
