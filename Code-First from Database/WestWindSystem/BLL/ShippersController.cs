using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WestWindSystem.DAL;
using WestWindSystem.Entities;

namespace WestWindSystem.BLL
{

    [DataObject]
    public class ShippersController
    {
        

        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Shipper> ListShippers()
        {
            using (var context = new WestWindContext())
            {
              
                return context.Shippers.ToList();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Insert)]
        public void AddShipper(Shipper item)
        {
            using (var context = new WestWindContext())
            {
                context.Shippers.Add(item);
                context.SaveChanges();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Update)]
        public void UpdateShipper(Shipper item)
        {
            using (var context = new WestWindContext())
            {
                var existing = context.Entry(item);
                existing.State = System.Data.Entity.EntityState.Modified;
                context.SaveChanges();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Delete)]
        public void DeleteSupplier(Shipper item)
        {
            using (var context = new WestWindContext())
            {
                var existing = context.Shippers.Find(item.ShipperID);
                context.Shippers.Remove(existing);
                context.SaveChanges();
            }
        }



    }
}
