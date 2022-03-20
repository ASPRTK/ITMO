using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace ASP.Zachet.TEST
{
    public class SampleContext : DbContext
    {
        public SampleContext() : base("ITMO.ASP") { }
        public DbSet<Student> Students { get; set; }
    }


    }