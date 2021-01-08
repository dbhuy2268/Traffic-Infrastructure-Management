using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataRepository
{
    public class ThongTinThanhToan
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int id { get; set; }
        public DateTime thoiGianThanhToan { get; set; }
        public string noiDungThanhToan { get; set; }
        public string trangThaiThanhToan { get; set; }
        public virtual ChuPhuongTien chuPhuongTien { get; set; } = new ChuPhuongTien();
        public virtual ThongTinLichHen thongTinLichHen { get; set; } = new ThongTinLichHen();

    }
}
