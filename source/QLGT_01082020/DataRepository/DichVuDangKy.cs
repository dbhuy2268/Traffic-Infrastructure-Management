using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataRepository
{
    public class DichVuDangKy
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int id { get; set; }
        public int tongGia { get; set; }
        public int soLuong { get; set; }
        public virtual ThongTinLichHen ThongTinLichHen { get; set; } = new ThongTinLichHen();
        public virtual DichVu DichVu { get; set; } = new DichVu();
    }
}
