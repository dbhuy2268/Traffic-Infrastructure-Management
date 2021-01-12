using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using DataRepository;

namespace WebClient.Controllers
{
    public class YeuCauXinController : ApiController
    {
        // GET: api/YeuCauXin
        public IEnumerable<YeuCauXin> Get()
        {
            QLGTDbContext context = new QLGTDbContext();
            var lstYeuCau = context.YeuCauXin.ToList();
            return lstYeuCau;
        }

        // GET: api/YeuCauXin/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/YeuCauXin 
        public void Post(YeuCauXin obj)
        {
            QLGTDbContext context = new QLGTDbContext();
            context.YeuCauXin.Add(obj);
            context.SaveChanges();
        }

        // PUT: api/YeuCauXin/5
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/YeuCauXin/5
        public void Delete(int id)
        {
        }
    }
}
