import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return BarChart(mainBarData());
  }

  BarChartGroupData makeGroupData(int x, double y1) {
    return BarChartGroupData(
      x: x,

      barRods: [
        BarChartRodData(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.secondary,
              Theme.of(context).colorScheme.tertiary,
            ],
            transform: GradientRotation(pi / 40),
          ),
          toY: y1,

          width: 20,
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            toY: 5,
            color: Colors.grey.shade300,
          ),
        ),
      ],
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(8, (index) {
    switch (index) {
      case 0:
        return makeGroupData(0, 2);
      case 1:
        return makeGroupData(1, 3);
      case 2:
        return makeGroupData(2, 2);
      case 3:
        return makeGroupData(3, 4.5);
      case 4:
        return makeGroupData(4, 3.8);
      case 5:
        return makeGroupData(5, 1.5);
      case 6:
        return makeGroupData(6, 4);
      case 7:
        return makeGroupData(7, 3.8);

      default:
        return throw Error();
    }
  });

  BarChartData mainBarData() {
    return BarChartData(
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 38,
            getTitlesWidget: getbottomTitles,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 38,
            getTitlesWidget: getLeftTitles,
          ),
        ),
        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      ),
      borderData: FlBorderData(show: false),
      gridData: FlGridData(show: false),
      barGroups: showingGroups(),
    );
  }

  Widget getbottomTitles(double value, TitleMeta meta) {
    final style = TextStyle(
      color: Colors.grey,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = Text("01", style: style);
        break;
      case 1:
        text = Text("02", style: style);
        break;
      case 2:
        text = Text("03", style: style);
        break;
      case 3:
        text = Text("04", style: style);
        break;
      case 4:
        text = Text("05", style: style);
        break;
      case 5:
        text = Text("06", style: style);
        break;
      case 6:
        text = Text("07", style: style);
        break;
      case 7:
        text = Text("08", style: style);
        break;

      default:
        text = Text(" ", style: style);
        break;
    }
    return SideTitleWidget(meta: meta, space: 16, child: text);
  }

  Widget getLeftTitles(double value, TitleMeta meta) {
    final style = TextStyle(
      color: Colors.grey,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    );
    String text;
    if (value == 0) {
      text = "1k";
    } else if (value == 1) {
      text = "2k";
    } else if (value == 2) {
      text = "3k";
    } else if (value == 3) {
      text = "4k";
    } else if (value == 4) {
      text = "5k";
    } else {
      return Container();
    }
    return SideTitleWidget(
      meta: meta,
      space: 16,
      child: Text(text, style: style),
    );
  }
}
