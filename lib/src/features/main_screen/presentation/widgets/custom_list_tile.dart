import 'package:bank_dash/src/core/resources/color_manager.dart';
import 'package:bank_dash/src/core/resources/font_manager.dart';
import 'package:bank_dash/src/core/resources/styles_manager.dart';
import 'package:bank_dash/src/features/main_screen/data/models/drawer_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.isActive,
    required this.model,
    required this.index,
    required this.onItemTapped,
  });

  final bool isActive;
  final DrawerModel model;
  final int index;
  final ValueChanged<int> onItemTapped;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: InkWell(
        onTap: () => onItemTapped(index),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (isActive)
              Container(
                height: 60,
                width: 6,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadiusDirectional.only(
                      bottomEnd: Radius.circular(60),
                      topEnd: Radius.circular(60)),
                  color: (index == 0 && isActive)
                      ? ColorManager.primary3
                      : ColorManager.vividBlue,
                ),
              ),
            SizedBox(width: isActive ? 38 - 6 : 38),
            SvgPicture.asset(
              isActive ? model.activeIcon : model.inActiveIcon,
            ),
            const SizedBox(width: 12),
            FittedBox(
              alignment: AlignmentDirectional.centerStart,
              fit: BoxFit.scaleDown,
              child: Text(
                model.title,
                style: StyleManager.getMediumStyle(
                  context,
                  color: (index == 0 && isActive)
                      ? ColorManager.primary3
                      : isActive
                          ? ColorManager.vividBlue
                          : ColorManager.silverGray,
                  fontSize: FontSize.s18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
