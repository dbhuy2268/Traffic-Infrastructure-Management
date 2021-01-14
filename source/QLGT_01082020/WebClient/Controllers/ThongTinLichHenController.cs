using DataRepository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebClient.Controllers
{
    public class ThongTinLichHenController : ApiController
    {
        // GET: api/ThongTinLichHen
        public List<ThongTinLichHen> Get()
        {
            QLGTDbContext context = new QLGTDbContext();
            var lstYeuCau = context.ThongTinLichHens.ToList();
            return lstYeuCau;
        }

        // GET: api/ThongTinLichHen/5
        public ThongTinLichHen Get(int id)
        {
            QLGTDbContext context = new QLGTDbContext();
            return context.ThongTinLichHens.Find(id);
        }

        // POST: api/ThongTinLichHen
        public void Post(ThongTinLichHen obj)
        {
            QLGTDbContext context = new QLGTDbContext();
            context.ThongTinLichHens.Add(obj);
            context.SaveChanges();
        }

        // PUT: api/ThongTinLichHen/5
        [HttpPut]
        public void Put(int id)
        {
            QLGTDbContext context = new QLGTDbContext();
            var a = context.ThongTinLichHens.Where(x => x.id == id).FirstOrDefault();
            a.trangThaiXetDuyet = true;
            context.SaveChanges();
        }

        // DELETE: api/ThongTinLichHen/5
        public void Delete(int id)
        {
            QLGTDbContext context = new QLGTDbContext();
            var data = context.ThongTinLichHens.ToList().Where(x => x.id == id).First();
            context.ThongTinLichHens.Remove(data);
            context.SaveChanges();
        }
    }
}
