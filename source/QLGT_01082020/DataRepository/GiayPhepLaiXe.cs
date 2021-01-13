using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations.Schema;
using System.Threading.Tasks;

namespace DataRepository
{
   public class GiayPhepLaiXe
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int id { get; set; }
        public string HoTen { get; set; }
        public string DiaChi { get; set; }
        public Nullable<System.DateTime> NgaySinh { get; set; }
        public string NgheNghiep { get; set; }
        public string CMND { get; set; }
        public Nullable<System.DateTime> NgayCap { get; set; }
        public string NoiCap { get; set; }
        public string SoDienThoai { get; set; }
        public string QuocTich { get; set; }
    }
}
