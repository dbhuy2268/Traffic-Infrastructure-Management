using DataRepository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;


namespace WebClient.Controllers
{
    public class GiayPhepLaiXeController : ApiController
    {
        // GET: api/GiayPhepLaiXe
        public List<GiayPhepLaiXe> Get()
        {
            QLGTDbContext context = new QLGTDbContext();
            var lstGPLX= context.GiayPhepLaiXes.ToList();
            return lstGPLX;
        }
        // GET api/GiayPhepLaiXe/5
        public GiayPhepLaiXe Get(int id)
        {
            QLGTDbContext context = new QLGTDbContext();
            return context.GiayPhepLaiXes.Find(id);
        }


        // POST api/GiayPhepLaiXe
        public void Post(GiayPhepLaiXe obj)
        {
            QLGTDbContext context = new QLGTDbContext();
            context.GiayPhepLaiXes.Add(obj);
            context.SaveChanges();
        }

        // PUT api/GiayPhepLaiXe/5
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/GiayPhepLaiXe/5
        public void Delete(int id)
        {
            QLGTDbContext context = new QLGTDbContext();
            var data = context.GiayPhepLaiXes.ToList().Where(x => x.id == id).First();
            context.GiayPhepLaiXes.Remove(data);
            context.SaveChanges();
        }
    }
}