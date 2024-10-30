import 'package:bank_dash/src/app/app.dart';
import 'package:bank_dash/src/core/resources/color_manager.dart';
import 'package:bank_dash/src/core/resources/font_manager.dart';
import 'package:bank_dash/src/core/resources/strings_manager.dart';
import 'package:bank_dash/src/core/resources/styles_manager.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class WeeklyActivityChart extends StatefulWidget {
  const WeeklyActivityChart({super.key});
  final Color leftBarColor = ColorManager.vividBlue;
  final Color rightBarColor = ColorManager.chartRightBarColor;

  @override
  State<StatefulWidget> createState() => WeeklyActivityChartState();
}

class WeeklyActivityChartState extends State<WeeklyActivityChart> {
  final double width = 15;

  late List<BarChartGroupData> rawBarGroups;

  int touchedGroupIndex = -1;

  @override
  void initState() {
    super.initState();
    final barGroup1 = makeGroupData(0, 480, 250); // Sat
    final barGroup2 = makeGroupData(1, 350, 130); // Sun
    final barGroup3 = makeGroupData(2, 320, 260); // Mon
    final barGroup4 = makeGroupData(3, 480, 370); // Tue
    final barGroup5 = makeGroupData(4, 160, 250); // Wed
    final barGroup6 = makeGroupData(5, 400, 230); // Thu
    final barGroup7 = makeGroupData(6, 400, 330); // Fri

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
      barGroup7,
    ];

    rawBarGroups = items;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.leftBarColor,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              StringsManager.deposit,
              style: StyleManager.getLatoRegularStyle(
                context,
                fontSize: FontSize.s15,
                color: ColorManager.grayishCornflower,
              ),
            ),
            const SizedBox(width: 30),
            Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.rightBarColor,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              StringsManager.withdraw,
              style: StyleManager.getLatoRegularStyle(
                context,
                fontSize: FontSize.s15,
                color: ColorManager.grayishCornflower,
              ),
            ),
            const SizedBox(width: 5),
          ],
        ),
        Expanded(
          child: BarChart(
            BarChartData(
              borderData: _borderData(),
              maxY: 600,
              titlesData: FlTitlesData(
                topTitles: _topTitles(),
                rightTitles: _rightTitles(),
                show: true,
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: bottomTitles,
                    reservedSize: 42,
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 40,
                    interval: 100,
                    getTitlesWidget: leftTitles,
                  ),
                ),
              ),
              barGroups: rawBarGroups,
              gridData: _gridData(),
            ),
          ),
        ),
      ],
    );
  }

  FlGridData _gridData() {
    return FlGridData(
      show: true,
      drawVerticalLine: false,
      horizontalInterval: 100, // Specify the horizontal intervals
      getDrawingHorizontalLine: (value) {
        return const FlLine(
          color: ColorManager.horizontalChartLineColor,
          strokeWidth: 1,
        );
      },
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    var style = StyleManager.getLatoRegularStyle(
      navigatorKey.currentContext!,
      fontSize: FontSize.s13,
      color: ColorManager.grayishCornflower,
    );
    String text;

    if (value == 0) {
      text = '0';
    } else if (value == 100) {
      text = '100';
    } else if (value == 200) {
      text = '200';
    } else if (value == 300) {
      text = '300';
    } else if (value == 400) {
      text = '400';
    } else if (value == 500) {
      text = '500';
    } else {
      return const SizedBox();
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: Text(text, style: style),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    final titles = ['Sat', 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri'];

    final Widget text = Text(
      titles[value.toInt()],
      style: StyleManager.getLatoRegularStyle(
        navigatorKey.currentContext!,
        fontSize: FontSize.s13,
        color: ColorManager.grayishCornflower,
      ),
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 17,
      child: text,
    );
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      barsSpace: 12,
      x: x,
      barRods: [
        BarChartRodData(
          toY: y1,
          color: widget.leftBarColor,
          width: width,
        ),
        BarChartRodData(
          toY: y2,
          color: widget.rightBarColor,
          width: width,
        ),
      ],
    );
  }

  AxisTitles _rightTitles() {
    return const AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    );
  }

  AxisTitles _topTitles() {
    return const AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    );
  }

  FlBorderData _borderData() {
    return FlBorderData(
      show: false,
    );
  }
}
