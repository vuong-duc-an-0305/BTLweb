using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;

namespace BTLweb
{
    public class MemBer
    {
        
        private string userTk;
        private string password;
        private string phone;
        private string email;

        //public MemBer(string userTk, string password, string phone, string email)
        //{
        //    UserTK1 = userTk;
        //    PasswordTK1 = password;
        //    PhoneTK1 = phone;
        //    EmailTK1 = email;
        //}
        public string UserTK1 { get; set; }
        public string PasswordTK1 { get; set; }
        public string PhoneTK1 { get; set; }
        public string EmailTK1 { get; set; }
     
    }
}