using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WestWindSystem.ReadModels
{
    public class ShipperSummary
    {
        public string Company { get; set; }
        public string Phone { get; set; }
        public IEnumerable<ShipperShipment> Shipments { get; set; }

    }
}
