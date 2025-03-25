
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart extends StatelessWidget {
  const Chart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: _buildChart(context),
    );
  }

  Widget _buildChart(BuildContext context) {
    return SfCartesianChart(
      tooltipBehavior: TooltipBehavior(enable: true),
      legend: Legend(
        isVisible: true,
        position: LegendPosition.top,
        overflowMode: LegendItemOverflowMode.wrap,
      ),
      primaryYAxis: NumericAxis(
        name: "value",
        title: AxisTitle(
          text: "Value",
        ),
      ),
      primaryXAxis: DateTimeAxis(
        name: "date",
        title: AxisTitle(
          text: "Date",
        ),
      ),
      series: _buildSeries(),
    );
  }

  List<LineSeries<double,DateTime>> _buildSeries() {
    List<LineSeries<double,DateTime>> series = [];
    List<double> data = [10,20,5,40];
    List<DateTime> dates = [
      DateTime(2023, 1, 1),
      DateTime(2023, 1, 2),
      DateTime(2023, 1, 3),
      DateTime(2023, 1, 4),
    ];

    series.add(
      LineSeries<double,DateTime>(
        dataSource: data,
        xValueMapper: (double data, int index) => dates[index],
        yValueMapper: (double data, _) => data,
        color: Colors.lightGreen,
      ),
    );
    return series;
  }
}