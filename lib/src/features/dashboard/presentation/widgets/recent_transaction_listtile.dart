import 'package:bank_dash/src/core/resources/color_manager.dart';
import 'package:bank_dash/src/core/resources/font_manager.dart';
import 'package:bank_dash/src/core/resources/strings_manager.dart';
import 'package:bank_dash/src/core/resources/styles_manager.dart';
import 'package:bank_dash/src/features/dashboard/data/models/recent_transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecentTransactionListTile extends StatelessWidget {
  const RecentTransactionListTile({
    super.key,
    required this.model,
  });

  final RecentTransactionModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      visualDensity: VisualDensity.standard,
      leading: CircleAvatar(
        radius: 27.5,
        backgroundColor: model.color,
        child: SvgPicture.asset(model.icon),
      ),
      title: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(model.title)),
      titleTextStyle: StyleManager.getMediumStyle(
        context,
        fontSize: FontSize.s16,
        color: ColorManager.veryDarkGray,
      ),
      subtitleTextStyle: StyleManager.getRegularStyle(
        context,
        fontSize: FontSize.s15,
        color: ColorManager.grayishCornflower,
      ),
      subtitle: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(model.date)),
      trailing: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
        child: Text(
          model.amount,
          style: StyleManager.getMediumStyle(
            context,
            fontSize: FontSize.s16,
            color: (model.title == StringsManager.depositFromMyCard)
                ? ColorManager.vibrantRed
                : ColorManager.brightMintGreen,
          ),
        ),
      ),
    );
  }
}
