using System;
using System.Collections.Generic;

namespace TheFront.Models
{
    public class ChuPhuongTienModel
    {
        public int id { get; set; }
        public string hoTen { get; set; }
        public string thongBao { get; set; }
        public virtual ICollection<PhuongTiensModel> PhuongTiens { get; set; } = new HashSet<PhuongTiensModel>();
    }
}
