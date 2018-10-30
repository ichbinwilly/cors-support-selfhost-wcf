using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ServiceModel;

namespace SelfHost
{
    class Program
    {
        static void Main(string[] args)
        {
            ServiceHost host = new ServiceHost(typeof(Service.JSonService));

            host.Open();

            Console.WriteLine("Host is running.");
            Console.ReadKey();
            host.Close();
        }
    }
}
