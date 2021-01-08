using DataRepository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebClient.Controllers
{
    public class PhuongTiensController : ApiController
    {
        // GET: api/PhuongTiens
        public List<PhuongTien> Get()
        {
            QLGTDbContext context = new QLGTDbContext();
            return context.PhuongTiens.ToList();
        }

        // GET: api/PhuongTiens/5
        public PhuongTien Get(int id)
        {
            QLGTDbContext context = new QLGTDbContext();
            return context.PhuongTiens.Find(id);
        }

        // POST: api/PhuongTiens
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/PhuongTiens/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/PhuongTiens/5
        public void Delete(int id)
        {
        }
    }
}
