using DataRepository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebClient.Controllers
{
    public class BienBanController : ApiController
    {
        // GET: api/BienBan
        public IEnumerable<BienBan> Get()
        {
            QLGTDbContext context = new QLGTDbContext();
            return context.BienBans.ToList();
        }

        // GET: api/BienBan/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/BienBan
        public void Post([FromBody] BienBan bb)
        {
            QLGTDbContext context = new QLGTDbContext();
            context.Database.ExecuteSqlCommand("DBCC CHECKIDENT('TableName', RESEED, 0)");
            context.BienBans.Add(bb);
            context.SaveChanges();
        }

        // PUT: api/BienBan/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/BienBan/5
        public void Delete(int id)
        {
        }
    }
}
