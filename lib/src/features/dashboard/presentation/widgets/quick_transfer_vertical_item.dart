import 'package:bank_dash/src/core/resources/assets_manager.dart';
import 'package:bank_dash/src/core/resources/color_manager.dart';
import 'package:bank_dash/src/core/resources/font_manager.dart';
import 'package:bank_dash/src/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';

class QuickTransferVerticalItem extends StatelessWidget {
  const QuickTransferVerticalItem({
    super.key,
    required this.name,
    required this.job,
  });
  final String name;
  final String job;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(children: [
        const CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage(
            AssetsManager.tempMyImage,
          ),
        ),
        const SizedBox(height: 15),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            name,
            style: StyleManager.getRegularStyle(
              context,
              color: ColorManager.veryDarkGray,
              fontSize: FontSize.s16,
            ),
          ),
        ),
        const SizedBox(height: 5),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            job,
            style: StyleManager.getRegularStyle(
              context,
              color: ColorManager.grayishCornflower,
              fontSize: FontSize.s15,
            ),
          ),
        ),
      ]),
    );
  }
}
