using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Text.Json.Serialization;
using System.Threading.Tasks;
using TheFront.Models;
using TheFront.Helper;



namespace TheFront.Controllers
{
    public class GiayPhepLaiXeController : Controller
    {
        private readonly ILogger<GiayPhepLaiXeController> _logger;
        TheAPI _api = new TheAPI();
        public IActionResult Index()
        {
            return View();
        }
        public async Task<IActionResult> Home_GPLX()
        {
            List<GiayPhepLaiXeModel> gplx = new List<GiayPhepLaiXeModel>();
            HttpClient client = _api.Initial();
            HttpResponseMessage res = await client.GetAsync("api/GiayPhepLaiXe");
            if (res.IsSuccessStatusCode)
            {
                var results = res.Content.ReadAsStringAsync().Result;
                gplx = JsonConvert.DeserializeObject<List<GiayPhepLaiXeModel>>(results);
            }
            return View(gplx);
        }
    }
}
