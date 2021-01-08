using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataRepository
{
    public class ThongTinDangKiem
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int id { get; set; }
        public string trangThaiDangKiem { get; set; }
        public DateTime ngayDangKiem { get; set; }
        public string GCN { get; set; }
        public DateTime ngayHetHanGCN { get; set; }
        public string donViKiemDinh { get; set; }
        public virtual PhuongTien phuongTien { get; set; } = new PhuongTien();

    }
}
