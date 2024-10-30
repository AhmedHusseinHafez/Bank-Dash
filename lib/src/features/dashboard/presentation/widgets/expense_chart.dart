import 'package:bank_dash/src/core/resources/color_manager.dart';
import 'package:bank_dash/src/core/resources/font_manager.dart';
import 'package:bank_dash/src/core/resources/styles_manager.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ExpenseChart extends StatelessWidget {
  const ExpenseChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 20),
      child: PieChart(
        PieChartData(
          startDegreeOffset: 215,
          borderData: FlBorderData(show: false),
          sectionsSpace: 8,
          centerSpaceRadius: 0,
          sections: showingSections(context),
        ),
      ),
    );
  }

  TextStyle _style(context) {
    return StyleManager.getBoldStyle(
      context,
      fontSize: FontSize.s18,
      color: ColorManager.white,
    );
  }

  List<PieChartSectionData> showingSections(context) {
    return List.generate(
      4,
      (i) {
        const color0 = ColorManager.primary1;
        const color1 = ColorManager.primary2;
        const color2 = ColorManager.primary3;
        const color3 = ColorManager.coral;

        switch (i) {
          case 0:
            return PieChartSectionData(
              color: color0,
              value: 30,
              title: '30% \nEntertainment',
              radius: 120,
              titlePositionPercentageOffset: 0.55,
              titleStyle: _style(context),
            );
          case 1:
            return PieChartSectionData(
              color: color1,
              value: 14,
              title: '15% \nBill Expense',
              radius: 130,
              titlePositionPercentageOffset: 0.55,
              titleStyle: _style(context),
            );
          case 2:
            return PieChartSectionData(
              color: color2,
              value: 21,
              title: '35% \nOthers',
              radius: 110,
              titlePositionPercentageOffset: 0.55,
              titleStyle: _style(context),
            );
          case 3:
            return PieChartSectionData(
              color: color3,
              value: 35,
              title: '20% \nInvestment',
              radius: 110,
              titlePositionPercentageOffset: 0.55,
              titleStyle: _style(context),
            );
          default:
            throw Error();
        }
      },
    );
  }
}
