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
        public YeuCauXin Get(int id)
        {
            QLGTDbContext context = new QLGTDbContext();
            return context.YeuCauXin.Find(id);
        }

        // POST: api/YeuCauXin 
        public void Post(YeuCauXin obj)
        {
            QLGTDbContext context = new QLGTDbContext();
            context.YeuCauXin.Add(obj);
            context.SaveChanges();
        }

        // PUT: api/YeuCauXin/5
        [HttpPut]
        public void Put(int id)
        {
            QLGTDbContext context = new QLGTDbContext();
            var a = context.YeuCauXin.Where(x => x.id == id).FirstOrDefault();
            a.DaXetDuyet = 1;
            context.SaveChanges();
        }

        // DELETE: api/YeuCauXin/5
        public void Delete(int id)
        {
            QLGTDbContext context = new QLGTDbContext();
            var data = context.YeuCauXin.ToList().Where(x => x.id == id).First();
            context.YeuCauXin.Remove(data);
            context.SaveChanges();
        }
    }
}
