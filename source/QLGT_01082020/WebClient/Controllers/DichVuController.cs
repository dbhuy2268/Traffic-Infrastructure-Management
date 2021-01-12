using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using DataRepository;


namespace WebClient.Controllers
{
    public class DichVuController : ApiController
    {
        // GET: api/DichVu
        public IEnumerable<DichVu> Get()
        {
            QLGTDbContext context = new QLGTDbContext();
            var lstDichVu = context.DichVus.ToList();
            return lstDichVu;
        }

        // GET: api/DichVu/5
        public DichVu Get(int id)
        {
            QLGTDbContext context = new QLGTDbContext();
            return context.DichVus.Find(id);
        }

        // POST: api/DichVu
        public void Post(DichVu DichVu)
        {
            QLGTDbContext context = new QLGTDbContext();
            context.DichVus.Add(DichVu);
            context.SaveChanges();
        }

        // PUT: api/DichVu/5
        public void Put(int id, [FromBody] string value)
        {

        }

        // DELETE: api/DichVu/5
        public void Delete(int id)
        {
            QLGTDbContext context = new QLGTDbContext();
            var data = context.DichVus.ToList().Where(x => x.id == id).First();
            context.DichVus.Remove(data);
            context.SaveChanges();
        }
    }
}
