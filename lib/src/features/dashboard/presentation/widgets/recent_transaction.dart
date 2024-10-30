import 'package:bank_dash/src/core/resources/color_manager.dart';

import 'package:bank_dash/src/features/dashboard/data/models/recent_transaction_model.dart';
import 'package:bank_dash/src/features/dashboard/presentation/widgets/recent_transaction_listTile.dart';
import 'package:flutter/material.dart';

class RecentTransaction extends StatelessWidget {
  const RecentTransaction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 235,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: RecentTransactionModel.recentTransactions
            .map(
              (model) => RecentTransactionListTile(model: model),
            )
            .toList(),
      ),
    );
  }
}
