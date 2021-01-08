using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataRepository
{
    public class ChuPhuongTien
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int id { get; set; }
        public string hoTen { get; set; }
        public string thongBao { get; set; }
        public virtual ICollection<PhuongTien> PhuongTiens { get; set; } = new HashSet<PhuongTien>();

    }
}
