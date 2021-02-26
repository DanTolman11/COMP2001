using System;
using System.Collections.Generic;

#nullable disable

namespace RESTful_API
{
    public partial class Password
    {
        public int PasswordId { get; set; }
        public string PreviousPassword { get; set; }
        public DateTime? ChangeDate { get; set; }
    }
}
