using System.Collections.Generic;

namespace HeatMapTest
{
    public class Processor : IProcessor
    {
        readonly Queue<double> _queue;
        readonly int _bufferLength;
        double sum;

        public Processor(int bufferLength)
        {
            _bufferLength = bufferLength;
            _queue = new Queue<double>();
        }

        private double Measure(double value)
        {
            _queue.Enqueue(value);
            sum += value;
            if (_queue.Count > _bufferLength)
            {
                sum -= _queue.Dequeue();
            }
            return sum / _queue.Count;
        }

        public void Process(int length, double[] data)
        {
            for (int i = 0; i < data.Length; i++)
            {
                data[i] = (Measure(data[i]));
            }
        }
    }
}
