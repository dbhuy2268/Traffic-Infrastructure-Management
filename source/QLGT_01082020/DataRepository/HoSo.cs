using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataRepository
{
    public class HoSo
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int id { get; set; }
        public string MaHoSo { get; set; }
        public string LoaiHoSo { get; set; }
        public string MoTaChiTiet { get; set; }
        public string NoiCap { get; set; }
        public string DiaChiLuu { get; set; }
        public ChuPhuongTien ChuPhuongTien { get; set; }
    }
}
