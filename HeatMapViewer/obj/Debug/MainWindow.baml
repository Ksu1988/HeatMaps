   M S B A M L   `   `   `  ����  HeatMapViewer    HeatMapViewer.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   X TSciChart.Core, Version=6.2.1.13304, Culture=neutral, PublicKeyToken=b55dd9efe817e823\ XSciChart.Charting, Version=6.2.1.13304, Culture=neutral, PublicKeyToken=b55dd9efe817e823X TSciChart.Data, Version=6.2.1.13304, Culture=neutral, PublicKeyToken=b55dd9efe817e823[ WSciChart.Drawing, Version=6.2.1.13304, Culture=neutral, PublicKeyToken=b55dd9efe817e8237s)http://schemas.abtsoftware.co.uk/scichart     5   	     � 	Resources  5       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $ MapStyle.xaml?�6%   %    5      .��5      �    MapViewModel � DataContext# [  6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��0��6.   $��0��6;   $��2��6K   $��50��6_   .+�5      �� $4��.Введите значение фильтра��6   �� 5       -   5         ��Name$ filter��5       ��6&   �� *Length+�� 5!      -   5         ��Name$ 	setButton��5!      $'��!Перестроить карту��5"   P   ��5!   (   �� *
SetCommand+��5"      �� 	 �� ElementName$	 filter��
 �� Path$

 Text�6P   5#      /  )SciChart.Charting.Visuals.SciChartSurface  5%   
   -   5          Name$ sciChart��5%      $��1��6.   $��1��6;   $��0q�6K   $��0q�5&         RenderableSeries 5)      Z  TSciChart.Charting.Visuals.RenderableSeries.FastUniformHeatmapRenderableSeriesForMvvm  -   5          Name$ HeatmapSeries��5)   >     ColorPaletteL  FSciChart.Charting.Visuals.RenderableSeries.BaseHeatmapRenderableSeries   ColorMap# [ 5+       J� Opacity$	 0.9Q�6>   E  ?SciChart.Charting.Visuals.RenderableSeries.BaseRenderableSeries   
DataSeries 5*   8   �� *
HeatData+5+   >      XAxis 5/      0  *SciChart.Charting.Visuals.Axes.NumericAxis  50      -  'SciChart.Charting.Visuals.Axes.AxisCore   DrawMajorBands . 6       YAxis 53        54       . 6       ChartModifier 57      4  .SciChart.Charting.ChartModifiers.ModifierGroup  58         ChildModifiers. 59      7  1SciChart.Charting.ChartModifiers.RolloverModifier  :	  4SciChart.Charting.ChartModifiers.TooltipModifierBase 	  ShowTooltipOn$ Always=�6)   @
  :SciChart.Charting.ChartModifiers.InspectSeriesModifierBase 
  UseInterpolation . 8  2SciChart.Charting.ChartModifiers.ChartModifierBase   ReceiveHandledEvents . 6Y   ?  9SciChart.Charting.ChartModifiers.RubberBandXyZoomModifier  5:         	ExecuteOn$ MouseLeftButton=�61   :  4SciChart.Charting.ChartModifiers.ZoomExtentsModifier  5;      $ MouseDoubleClick=�6,   5<      5>      /  )SciChart.Charting.Visuals.HeatmapColorMap  5@   
   $��10,10,60,40q�6   $��1��5A      $��1��5B      $��Right=�5C      $��Stretch=�5D         TextFormatting$
 0.00��5J      $	 0.8Q�5K      ���#777$��1q�5M         Orientation$ Vertical=�5N      ��5E      ��  �� Source %  System.Windows.Markup.Reference     Name$ sciChart��$
 
Background���5F      ��    $ sciChart��$
 
Foreground�   ColorMap 5G      ��    $ HeatmapSeries��$
 ColorMap.GradientStops� ( $ColorsToLinearGradientBrushConverter �� 	Converter# [     Minimum  5H      ��    $ HeatmapSeries��$
 ColorMap.Minimum�! �� Mode$! TwoWay=�"   Maximum" 5I      ��    $ HeatmapSeries��$
 ColorMap.Maximum�$! TwoWay=�5N      5O      5P      