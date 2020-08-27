using System;
using System.Collections.Generic;
using System.IO;
using CsvHelper;
using System.Text;
using System.Globalization;
using System.Collections;

namespace HeatMapTest
{
    public class FileReader
    {
       public void Get()
        {
            using (var reader = new StreamReader("DataExample.csv"))
            {
                var sum = 0;
                while (!reader.EndOfStream)
                {
                    var datList = reader.ReadLine();
                    var data = datList.Split(',');
                    sum++;
                }
                
            }
            //using (var csv = new CsvReader(reader, CultureInfo.InvariantCulture))
            //{
            //    csv.Configuration.HasHeaderRecord = false;
            //    csv.Configuration.Delimiter = ",";
            //    var records = csv.GetRecords<string>();
            //    foreach( var r in records)
            //    {
            //        var rr = r.Length;
            //        var re = r[8]; 
            //    }
            //}
        }
    }
}
