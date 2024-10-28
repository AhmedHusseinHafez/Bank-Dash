import 'package:bank_dash/src/core/resources/assets_manager.dart';
import 'package:bank_dash/src/core/resources/color_manager.dart';
import 'package:bank_dash/src/core/resources/font_manager.dart';
import 'package:bank_dash/src/core/resources/strings_manager.dart';
import 'package:bank_dash/src/core/resources/styles_manager.dart';
import 'package:bank_dash/src/features/main_screen/data/models/drawer_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.sizeOf(context).width * 0.175,
      shape: const RoundedRectangleBorder(),
      child: Column(children: [
        const SizedBox(height: 37),
        _titleOfApp(context),
        const SizedBox(height: 65),
        const DrawerListColumn(),
      ]),
    );
  }

  Widget _titleOfApp(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset(AssetsManager.appIcon),
      const SizedBox(width: 12),
      Text(
        StringsManager.bankDash,
        style: TextStyle(
          fontSize: getResponsiveFontSize(context, fontSize: FontSize.s25),
          fontFamily: FontConstants.montFontFamily,
          color: ColorManager.primary2,
        ),
      ),
    ]);
  }
}

class DrawerListColumn extends StatelessWidget {
  const DrawerListColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: DrawerModel.getDrawerList()
          .map(
            (model) => ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 44,
                vertical: 8,
              ),
              tileColor: ColorManager.white,
              leading: SvgPicture.asset(
                model.inActiveIcon,
              ),
              title: Text(
                model.title,
                style: StyleManager.getMediumStyle(
                  context,
                  color: ColorManager.silverGray,
                  fontSize: FontSize.s18,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
