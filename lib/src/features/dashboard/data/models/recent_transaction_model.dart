import 'package:bank_dash/src/core/resources/assets_manager.dart';
import 'package:bank_dash/src/core/resources/color_manager.dart';
import 'package:bank_dash/src/core/resources/strings_manager.dart';
import 'package:flutter/material.dart';

class RecentTransactionModel {
  final String title;
  final String icon;
  final String amount;
  final String date;
  final Color color;

  RecentTransactionModel({
    required this.title,
    required this.icon,
    required this.amount,
    required this.date,
    required this.color,
  });

  static List<RecentTransactionModel> recentTransactions = [
    RecentTransactionModel(
      title: StringsManager.depositFromMyCard,
      icon: AssetsManager.svgBusinessFinanceMoney,
      amount: r"-$850",
      date: "28 January 2021",
      color: ColorManager.lightCream,
    ),
    RecentTransactionModel(
      title: StringsManager.depositPaypal,
      icon: AssetsManager.svgPaypalPaymentPay,
      amount: r"+$2,500",
      date: "28 January 2021",
      color: ColorManager.palePeriwinkle,
    ),
    RecentTransactionModel(
      title: "Ahmed Hussein",
      icon: AssetsManager.svgMony,
      amount: r"+$5,400",
      date: "28 January 2021",
      color: ColorManager.mintIce,
    ),
  ];
}
