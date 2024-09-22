import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyChart extends StatefulWidget {
  const MyChart({super.key});

  @override
  State<MyChart> createState() => _MyChartState();
}

class _MyChartState extends State<MyChart> {
  @override
  Widget build(BuildContext context) {
    return BarChart(
      mainBarData(),
    );
  }

  // BarChartDate
  BarChartData mainBarData() {
    return BarChartData(
        titlesData: FlTitlesData(
      show: true,
      rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      bottomTitles: AxisTitles(
          sideTitles: SideTitles(
              showTitles: true, reservedSize: 38, getTitlesWidget: getTiles)),
      leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
    ));
  }

  Widget getTiles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    Widget text;

    switch (value.toInt()) {
      case 0:
        text = const Text('01', style: style);
        break;
      case 1:
        text = const Text('01', style: style);
        break;
      case 2:
        text = const Text('02', style: style);
        break;
      case 3:
        text = const Text('03', style: style);
        break;
      case 4:
        text = const Text('04', style: style);
        break;
      case 5:
        text = const Text('05', style: style);
        break;
      default:
        text = const Text(
          '',
          style: style,
        );
    }
    return SideTitleWidget(
      space: 16,
      axisSide: meta.axisSide,
      child: text,
    );
  }
}
