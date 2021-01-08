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
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/ThongTinDangKiems/5
        public ThongTinDangKiem Get(int id)
        {
            return null;
        }

        // POST: api/ThongTinDangKiems
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/ThongTinDangKiems/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/ThongTinDangKiems/5
        public void Delete(int id)
        {
        }
    }
}
