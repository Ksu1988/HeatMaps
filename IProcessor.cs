using System;
using System.Collections.Generic;
using System.Text;

namespace HeatMapTest
{
    public interface IProcessor
    {
        /// <summary>
        /// Process data in X direction
        /// </summary>
        /// <param name="length">size of data in x direction, width = data.Length/length</param>
        /// <param name="data">data</param>
        void Process(int length, double[] data);
    }
}
