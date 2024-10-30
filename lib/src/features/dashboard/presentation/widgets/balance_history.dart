import 'package:bank_dash/src/core/resources/color_manager.dart';
import 'package:bank_dash/src/core/resources/font_manager.dart';
import 'package:bank_dash/src/core/resources/strings_manager.dart';
import 'package:bank_dash/src/core/resources/styles_manager.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BalanceHistory extends StatelessWidget {
  const BalanceHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _myTitle(
          context,
          text: StringsManager.balanceHistory,
        ),
        const SizedBox(height: 20),
        Container(
          height: 276,
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(25),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: const BalanceHistoryChart(),
        )
      ],
    );
  }

  Widget _myTitle(BuildContext context, {required String text}) {
    return Text(
      text,
      style: StyleManager.getSemiBoldStyle(
        context,
        fontSize: FontSize.s22,
        color: ColorManager.primary2,
      ),
    );
  }
}

class BalanceHistoryChart extends StatefulWidget {
  const BalanceHistoryChart({super.key});

  @override
  State<BalanceHistoryChart> createState() => _BalanceHistoryChartState();
}

class _BalanceHistoryChartState extends State<BalanceHistoryChart> {
  @override
  Widget build(BuildContext context) {
    return LineChart(
      mainData(),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    TextStyle style = StyleManager.getRegularStyle(
      context,
      fontSize: FontSize.s14,
      color: ColorManager.grayishCornflower,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = Text('Jul', style: style);

      case 2:
        text = Text('Aug', style: style);

      case 4:
        text = Text('Sep', style: style);

      case 5:
        text = Text('Oct', style: style);
      case 6:
        text = Text('Nov', style: style);
      case 7:
        text = Text('Dec', style: style);
      case 8:
        text = Text('Jan', style: style);

      default:
        text = Text('Nov', style: style);
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    var style = StyleManager.getLatoRegularStyle(
      context,
      fontSize: FontSize.s13,
      color: ColorManager.grayishCornflower,
    );
    String text;

    if (value == 0) {
      text = '0';
    } else if (value == 200) {
      text = '200';
    } else if (value == 400) {
      text = '400';
    } else if (value == 600) {
      text = '600';
    } else if (value == 800) {
      text = '800';
    } else {
      return const SizedBox();
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: Text(text, style: style),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 200,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return _flLine();
        },
        getDrawingVerticalLine: (value) {
          return _flLine();
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        rightTitles:
            const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 200,
            reservedSize: 42,
            getTitlesWidget: leftTitles,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      // maxX: 5,
      maxY: 900,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 100),
            FlSpot(1, 300),
            FlSpot(2, 500),
            FlSpot(3, 800),
            FlSpot(4, 500),
            FlSpot(5, 600),
            FlSpot(6, 300),
            FlSpot(7, 600),
            FlSpot(8, 600),
          ],
          isCurved: true,
          color: ColorManager.vividBlue,
          barWidth: 4,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: ColorManager.cartGradient,
          ),
        ),
      ],
    );
  }

  FlLine _flLine() {
    return const FlLine(
      color: ColorManager.dashChart,
      strokeWidth: 1,
      dashArray: [5, 5],
    );
  }
}
