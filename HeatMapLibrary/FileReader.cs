using System.Collections.Generic;
using System.Globalization;
using System.IO;

namespace HeatMapTest
{
    public class FileReader
    {
        /// <summary>
        /// Чтение данных из файла
        /// </summary>
        public List<double[]> Get()
        {
            var result = new List<double[]>();
            try
            {
                using (var reader = new StreamReader("DataExample.csv"))
                {
                    while (!reader.EndOfStream)
                    {
                        var datList = reader.ReadLineAsync();
                        var strData = datList.Result.Split(',');
                        var l = strData.Length;
                        var data = new double[l];
                        for (int i = 0; i < strData.Length; i++)
                        {
                            string s = strData[i];
                            data.SetValue(double.Parse(s, CultureInfo.InvariantCulture), i);
                        }
                        result.Add(data);
                    }
                }
            }
            catch
            {
                throw new FileLoadException();
            }
            return result;
        }
    }
}
