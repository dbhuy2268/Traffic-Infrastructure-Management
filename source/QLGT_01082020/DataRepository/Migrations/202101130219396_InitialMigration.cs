namespace DataRepository.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialMigration : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.GiayPhepLaiXes",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        HoTen = c.String(),
                        DiaChi = c.String(),
                        NgaySinh = c.DateTime(),
                        NgheNghiep = c.String(),
                        CMND = c.String(),
                        NgayCap = c.DateTime(),
                        NoiCap = c.String(),
                        SoDienThoai = c.String(),
                        QuocTich = c.String(),
                    })
                .PrimaryKey(t => t.id);
            
            AlterColumn("dbo.PhuongTiens", "ChuPhuongTien_id", c => c.Int());
            AlterColumn("dbo.ThongTinDangKiems", "phuongTien_id", c => c.Int());
            AlterColumn("dbo.ThongTinLichHens", "PhuongTien_id", c => c.Int());
            AlterColumn("dbo.DichVuDangKies", "DichVu_id", c => c.Int());
            AlterColumn("dbo.DichVuDangKies", "ThongTinLichHen_id", c => c.Int());
            AlterColumn("dbo.HoSoes", "ChuPhuongTien_id", c => c.Int());
            AlterColumn("dbo.HoSoes", "YeuCauXin_id", c => c.Int());
            AlterColumn("dbo.ThongTinThanhToans", "chuPhuongTien_id", c => c.Int());
            AlterColumn("dbo.ThongTinThanhToans", "thongTinLichHen_id", c => c.Int());
          
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.GPLXes",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        MaGPLX = c.String(),
                        HoTen = c.String(),
                        DiaChi = c.String(),
                    })
                .PrimaryKey(t => t.id);
            
            AlterColumn("dbo.ThongTinThanhToans", "thongTinLichHen_id", c => c.Int());
            AlterColumn("dbo.ThongTinThanhToans", "chuPhuongTien_id", c => c.Int());
            AlterColumn("dbo.HoSoes", "YeuCauXin_id", c => c.Int());
            AlterColumn("dbo.HoSoes", "ChuPhuongTien_id", c => c.Int());
            AlterColumn("dbo.DichVuDangKies", "ThongTinLichHen_id", c => c.Int());
            AlterColumn("dbo.DichVuDangKies", "DichVu_id", c => c.Int());
            AlterColumn("dbo.ThongTinLichHens", "PhuongTien_id", c => c.Int());
            AlterColumn("dbo.ThongTinDangKiems", "phuongTien_id", c => c.Int());
            AlterColumn("dbo.PhuongTiens", "ChuPhuongTien_id", c => c.Int());
           
        }
    }
}
