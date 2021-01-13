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
    public class HoSoController : Controller
    {
        private readonly ILogger<HoSoController> _logger;

        public HoSoController(ILogger<HoSoController> logger)
        {
            _logger = logger;
        }
        //public IActionResult Index()
        //{
        //    //return View();
        //    return View("~/Views/Home/Index.cshtml");
        //}

        TheAPI _api = new TheAPI();
        
        [HttpPost]
        public async Task<HoSoModel> Create_HoSo(HoSoModel o_HoSo)
        {
            HoSoModel HS = new HoSoModel();
            HttpClient client = _api.Initial();

            using (client)
            {
                //Http Post
                using (var postTask = await client.PostAsync("api/BienBan", new StringContent(JsonConvert.SerializeObject(o_HoSo), Encoding.UTF8, "application/json")))
                {
                    var api_response = await postTask.Content.ReadAsStringAsync();
                    HS = JsonConvert.DeserializeObject<HoSoModel>(api_response);
                }
            }
            //return RedirectToAction("Create");
            return HS;
        }
        //public IActionResult Privacy()
        //{
        //    return View();
        //}

        //[ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        //public IActionResult Error()
        //{
        //    return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        //}
    }
}
