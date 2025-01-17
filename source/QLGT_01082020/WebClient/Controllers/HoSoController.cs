﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using DataRepository;

namespace WebClient.Controllers
{
    public class HoSoController : ApiController
    {
        // GET: api/HoSo
        public IEnumerable<HoSo> Get()
        {
            QLGTDbContext context = new QLGTDbContext();
            var lstHoSo = context.HoSo.ToList();
            return lstHoSo;
        }

        // GET: api/HoSo/5
        public HoSo Get(int id)
        {
            QLGTDbContext context = new QLGTDbContext();
            return context.HoSo.Find(id);
        }

        // POST: api/HoSo
        public void Post(HoSo Hoso)
        {
            QLGTDbContext context = new QLGTDbContext();
            context.HoSo.Add(Hoso);
            context.SaveChanges();
        }

        // PUT: api/HoSo/5
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/HoSo/5
        public void Delete(int id)
        {
            QLGTDbContext context = new QLGTDbContext();
            var data = context.HoSo.ToList().Where(x => x.id == id).First();
            context.HoSo.Remove(data);
            context.SaveChanges();
        }
    }
}
