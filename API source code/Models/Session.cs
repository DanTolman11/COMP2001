using System;
using System.Collections.Generic;

#nullable disable

namespace RESTful_API
{
    public partial class Session
    {
        public int SessionId { get; set; }
        public DateTime SessionDate { get; set; }
        public DateTime? SessionTime { get; set; }
    }
}
