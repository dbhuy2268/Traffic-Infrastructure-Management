using DataRepository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebClient.Controllers
{
    public class ThongTinThanhToanController : ApiController
    {
        // GET: api/ThongTinThanhToan
        public List<ThongTinThanhToan> Get()
        {
            QLGTDbContext context = new QLGTDbContext();
            var lstYeuCau = context.ThongTinThanhToans.ToList();
            return lstYeuCau;
        }

        // GET: api/ThongTinThanhToan/5
        public ThongTinThanhToan Get(int id)
        {
            QLGTDbContext context = new QLGTDbContext();
            return context.ThongTinThanhToans.Find(id);
        }

        // POST: api/ThongTinThanhToan
        public void Post(ThongTinThanhToan obj)
        {
            QLGTDbContext context = new QLGTDbContext();
            context.ThongTinThanhToans.Add(obj);
            context.SaveChanges();
        }

        // PUT: api/ThongTinThanhToan/5
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/ThongTinThanhToan/5
        public void Delete(int id)
        {
            QLGTDbContext context = new QLGTDbContext();
            var data = context.ThongTinThanhToans.ToList().Where(x => x.id == id).First();
            context.ThongTinThanhToans.Remove(data);
            context.SaveChanges();
        }
    }
}
