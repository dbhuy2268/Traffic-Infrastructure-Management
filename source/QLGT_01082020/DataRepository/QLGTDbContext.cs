using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataRepository
{
    public class QLGTDbContext : DbContext
    {
        public QLGTDbContext() : base("QLGTConnection")
        {

        }
        public DbSet<ChuPhuongTien> ChuPhuongTiens { get; set; }
        public DbSet<DichVu> DichVus { get; set; }
        public DbSet<DichVuDangKy> DichVuDangKies { get; set; }
        public DbSet<PhuongTien> PhuongTiens { get; set; }
        public DbSet<ThongTinDangKiem> ThongTinDangKiems { get; set; }
        public DbSet<ThongTinLichHen> ThongTinLichHens { get; set; }
        public DbSet<ThongTinThanhToan> ThongTinThanhToans { get; set; }
        public DbSet<BienBan> BienBans { get; set; }
        public DbSet<YeuCauXin> YeuCauXin { get; set; }
        public DbSet<HoSo> HoSo { get; set; }
        public DbSet<GiayPhepLaiXe> GiayPhepLaiXes { get; set; }

    }
}
