using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using DataRepository;

namespace WebClient.Controllers
{
    public class DichVuDangKyController : ApiController
    {
        // GET: api/DichVuDangKy
        public IEnumerable<DichVuDangKy> Get()
        {
            QLGTDbContext context = new QLGTDbContext();
            return context.DichVuDangKies.ToList();
        }

        // GET: api/DichVuDangKy/5
        public DichVuDangKy Get(int id)
        {
            QLGTDbContext context = new QLGTDbContext();
            return context.DichVuDangKies.Find(id);
        }

        // POST: api/DichVuDangKy
        public void Post([FromBody] DichVuDangKy bb)
        {
            QLGTDbContext context = new QLGTDbContext();
            context.DichVuDangKies.Add(bb);
            context.SaveChanges();
        }

        // PUT: api/DichVuDangKy/5
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/DichVuDangKy/5
        public void Delete(int id)
        {
            QLGTDbContext context = new QLGTDbContext();
            var data = context.DichVuDangKies.ToList().Where(x => x.id == id).First();
            context.DichVuDangKies.Remove(data);
            context.SaveChanges();
        }
    }
}
