﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataRepository
{
    public class BienBan
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int id { get; set; }
        public string CanCu { get; set; }
        public DateTime? NgayViPham { get; set; }
        public string DonVi { get; set; }
        public string DiaDiem { get; set; }
        public string Hoten1 { get; set; }
        public string CapBac1 { get; set; }
        public string ChucVu1 { get; set; }
        public string HoTen2 { get; set; }
        public string CapBac2 { get; set; }
        public string ChucVu2 { get; set; }
        public string HoTenVP { get; set; }
        public DateTime? NgaySinh { get; set; }
        public string NgheNghiep { get; set; }
        public string DiaChi { get; set; }
        public string CMND { get; set; }
        public DateTime? NgayCap { get; set; }
        public string NoiCap { get; set; }
        public string DiaDiemVP { get; set; }
        public string HanhViVP { get; set; }
        public string LoiKhaiVP { get; set; }
        public string LoiKhaiCK { get; set; }
        public string BienPhap { get; set; }
        public string TangVat { get; set; }
        public DateTime? NgayRaQDXP { get; set; }
    }
}
