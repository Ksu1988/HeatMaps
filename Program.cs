using System;

namespace HeatMapTest
{
    class Program
    {
        static void Main(string[] args)
        {
            var fr = new FileReader();
            fr.Get();
            Console.WriteLine(fr);
        }
    }
}
