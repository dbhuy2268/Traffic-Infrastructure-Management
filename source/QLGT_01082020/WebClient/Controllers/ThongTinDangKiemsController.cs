using DataRepository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebClient.Controllers
{
    public class ThongTinDangKiemsController : ApiController
    {
        // GET: api/ThongTinDangKiems
        public List<ThongTinDangKiem> Get()
        {
            QLGTDbContext context = new QLGTDbContext();
            var lstYeuCau = context.ThongTinDangKiems.ToList();
            return lstYeuCau;
        }

        // GET: api/ThongTinDangKiems/5
        public ThongTinDangKiem Get(int id)
        {
            QLGTDbContext context = new QLGTDbContext();
            return context.ThongTinDangKiems.Find(id);
        }

        // POST: api/ThongTinDangKiems
        public void Post(ThongTinDangKiem obj)
        {
            QLGTDbContext context = new QLGTDbContext();
            context.ThongTinDangKiems.Add(obj);
            context.SaveChanges();
        }

        // PUT: api/ThongTinDangKiems/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/ThongTinDangKiems/5
        public void Delete(int id)
        {
            QLGTDbContext context = new QLGTDbContext();
            var data = context.ThongTinDangKiems.ToList().Where(x => x.id == id).First();
            context.ThongTinDangKiems.Remove(data);
            context.SaveChanges();
        }
    }
}
