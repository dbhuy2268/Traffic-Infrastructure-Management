using DataRepository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebClient.Controllers
{
    public class ChuPhuongTienController : ApiController
    {
        // GET: api/ChuPhuongTienController
        public List<ChuPhuongTien> Get()
        {
            QLGTDbContext context = new QLGTDbContext();
            return context.ChuPhuongTiens.ToList();
        }

        // GET: api/ChuPhuongTien/5
        public ChuPhuongTien Get(int id)
        {
            QLGTDbContext context = new QLGTDbContext();
            return context.ChuPhuongTiens.Find(id);
        }

        // POST: api/ChuPhuongTien
        public void Post([FromBody] ChuPhuongTien obj)
        {
            QLGTDbContext context = new QLGTDbContext();
            context.ChuPhuongTiens.Add(obj);
            context.SaveChanges();
        }

        // PUT: api/ChuPhuongTien/5
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/ChuPhuongTien/5
        public void Delete(int id)
        {
            QLGTDbContext context = new QLGTDbContext();
            var data = context.ChuPhuongTiens.ToList().Where(x => x.id == id).First();
            context.ChuPhuongTiens.Remove(data);
            context.SaveChanges();
        }
    }
}
