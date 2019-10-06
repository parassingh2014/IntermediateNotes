using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WestWindSystem.DAL;
using WestWindSystem.ReadModels;

namespace WestWindSystem.BLL
{[DataObject]
    public class ShipChainManagement
    {
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<ShipperSummary> ListShippers()
        {
            using (var context = new WestWindContext())
            {
                var result = from ship in context.Shippers

                             select new ShipperSummary
                             {
                                 Company = ship.CompanyName,
                                 Phone = ship.Phone,

                                 Shipments = from item in ship.Shipments
                                             select new ShipperShipment
                                             {

                                                 Date = item.ShippedDate,
                                                 Via = item.ShipVia,
                                                 Charge = item.FreightCharge
                                             }

                             };
                return result.ToList();
            }
            
        }
    }
}
