using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using DataRepository;

namespace WebClient.Controllers
{
    public class LuatsController : ApiController
    {
        // GET api/<controller>
        public IEnumerable<Luat> Get()
        {
            QLGTDbContext context = new QLGTDbContext();
            return context.Luat.ToList();
        }

        // GET api/<controller>/5
        public Luat Get(int id)
        {
            QLGTDbContext context = new QLGTDbContext();
            return context.Luat.Find(id);
        }

        // POST api/<controller>
        public void Post([FromBody] Luat Luat)
        {
        }

        // PUT api/<controller>/5
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
        }
    }
}