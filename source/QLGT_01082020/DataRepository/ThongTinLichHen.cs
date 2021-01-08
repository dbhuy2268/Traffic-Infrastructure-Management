using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataRepository
{
    public class ThongTinLichHen
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int id { get; set; }
        public string bienSoXe { get; set; }
        public string soKhung { get; set; }
        public string soMay { get; set; }
        public DateTime ngayDangKy { get; set; }
        public string tenNguoiDangKy { get; set; }
        public string soDienThoai { get; set; }
        public string CMND { get; set; }
        public string khungGio { get; set; }
        public virtual ICollection<DichVuDangKy> DichVuDangKies { get; set; } = new HashSet<DichVuDangKy>();

    }
}
