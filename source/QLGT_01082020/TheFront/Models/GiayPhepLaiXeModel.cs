using System;
using System.Collections.Generic;
namespace TheFront.Models
{
    public class GiayPhepLaiXeModel
    {
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
        public virtual ICollection<GiayPhepLaiXeModel> gplx { get; set; } = new HashSet<GiayPhepLaiXeModel>();
    }
}
