using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TheFront.Models
{
    public class LuatViewModel
    {
        public IQueryable<LuatModel> Luats { get; set; }
        public string Text { get; set; }
    }
}
