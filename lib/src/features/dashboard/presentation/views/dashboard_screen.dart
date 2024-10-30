import 'package:bank_dash/src/core/resources/color_manager.dart';
import 'package:bank_dash/src/core/resources/font_manager.dart';
import 'package:bank_dash/src/core/resources/strings_manager.dart';
import 'package:bank_dash/src/core/resources/styles_manager.dart';
import 'package:bank_dash/src/features/dashboard/presentation/widgets/balance_history.dart';
import 'package:bank_dash/src/features/dashboard/presentation/widgets/expense_chart.dart';
import 'package:bank_dash/src/features/dashboard/presentation/widgets/quick_transfer.dart';
import 'package:bank_dash/src/features/dashboard/presentation/widgets/recent_transaction.dart';
import 'package:bank_dash/src/features/dashboard/presentation/widgets/weekly_activity_chart.dart';
import 'package:bank_dash/src/features/dashboard/presentation/widgets/my_active_card.dart';
import 'package:bank_dash/src/features/dashboard/presentation/widgets/my_cards_header.dart';
import 'package:bank_dash/src/features/dashboard/presentation/widgets/my_inactive_card.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _leftSection(context),
              const SizedBox(width: 30),
              _rightSection(context),
            ],
          ),
          const SizedBox(height: 24),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: QuickTransfer(),
              ),
              SizedBox(width: 30),
              Expanded(
                flex: 2,
                child: BalanceHistory(),
              ),
            ],
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget _rightSection(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          _myTitle(context, text: StringsManager.recentTransaction),
          const SizedBox(height: 20),
          const RecentTransaction(),
          const SizedBox(height: 24),
          _myTitle(context, text: StringsManager.expenseStatistics),
          const SizedBox(height: 18),
          Container(
            height: 322,
            decoration: BoxDecoration(
              color: ColorManager.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: const ExpenseChart(),
          ),
        ],
      ),
    );
  }

  Widget _leftSection(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          const MyCardsHeader(),
          const SizedBox(height: 20),
          const Row(
            children: [
              Expanded(child: MyActiveCard()),
              SizedBox(width: 30),
              Expanded(child: MyInActiveCard()),
            ],
          ),
          const SizedBox(height: 24),
          _myTitle(context, text: StringsManager.weeklyActivity),
          const SizedBox(height: 20),
          _weeklyChart(),
        ],
      ),
    );
  }

  Widget _weeklyChart() {
    return Container(
      height: 322,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: WeeklyActivityChart(),
      ),
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
