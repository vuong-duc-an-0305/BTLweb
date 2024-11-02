using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTLweb
{
    public class cart : Product
    {
        public int quantity { get; set; }
        public cart(string id, string name, string price, string a, string b, string c, string d,string e, string images, int quantity)
        {
            this.Id = id;
            this.Name = name;
            this.Price = price;
            this.A = a;
            this.B = b;
            this.C = c;
            this.D = d;
            this.E = e;
            this.Images = images;
            this.quantity = quantity;
        }
    }
}
