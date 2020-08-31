using HeatMapTest;
using Prism.Commands;
using Prism.Mvvm;
using SciChart.Charting.Model.DataSeries.Heatmap2DArrayDataSeries;
using System.Collections.Generic;

namespace HeatMapViewer
{
    public class MapViewModel : BindableBase
    {
        private string _length;
        public string Length
        {
            get { return _length; }
            set
            {
                _length = value;
                RaisePropertyChanged("Length");
            }
        }

        private IHeatmapDataSeries _heatData;
        public IHeatmapDataSeries HeatData
        {
            get { return _heatData; }
            set
            {
                _heatData = value;
                RaisePropertyChanged("HeatData");
            }
        }
        public DelegateCommand<string> SetCommand { get; }
        public MapViewModel()
        {
            Length = "100";
            var defaultLength = 100;
            int.TryParse(_length, out defaultLength);
            var cpMax = 200;
            var fr = new FileReader();
            var mapsData = fr.Get();
            HeatData = CreateSeries(cpMax, mapsData, defaultLength);
            SetCommand = new DelegateCommand<string>(str =>
            {
                mapsData = fr.Get();
                int.TryParse(_length, out defaultLength);
                HeatData = CreateSeries(cpMax, mapsData, defaultLength); ;
            });
        }
        private IHeatmapDataSeries CreateSeries(double cpMax, List<double[]> mData, int length)
        {
            int w = 4128, h = mData.Count;
            var data = new double[h, w];
            var map = new Processor(length);
            for (int x = 0; x < h; x++)
            {
                var rowData = mData[x];
                map.Process(length, rowData);
                for (int y = 0; y < w; y++)
                {
                    data[x, y] = (rowData[y] > cpMax) ? cpMax : rowData[y];
                }
            }

            return new UniformHeatmapDataSeries<int, int, double>(data, 0, 1, 0, 1);
        }
    }
}
