using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WestWindSystem.ReadModels
{
    public class ShipperShipment
    {
        public DateTime Date { get; set; }
        public int Via { get; set; }
        public decimal Charge{ get; set; }
    }
}
