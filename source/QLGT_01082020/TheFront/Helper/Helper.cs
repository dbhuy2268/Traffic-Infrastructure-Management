using System;
using System.Net.Http;

namespace TheFront.Helper
{
    public class TheAPI
    {
        public HttpClient Initial()
        {
            var client = new HttpClient();
            client.BaseAddress = new Uri("https://localhost:44318/");
            return client;
        }
    }
}
