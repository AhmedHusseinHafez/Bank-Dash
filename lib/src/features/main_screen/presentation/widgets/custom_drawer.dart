import 'package:bank_dash/src/core/resources/assets_manager.dart';
import 'package:bank_dash/src/core/resources/color_manager.dart';
import 'package:bank_dash/src/core/resources/font_manager.dart';
import 'package:bank_dash/src/core/resources/strings_manager.dart';
import 'package:bank_dash/src/core/resources/styles_manager.dart';
import 'package:bank_dash/src/features/main_screen/presentation/widgets/drawer_list_column.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final int activeIndex;
  final ValueChanged<int> onItemTapped;

  const CustomDrawer({
    super.key,
    required this.activeIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ColorManager.white,
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 37),
                _titleOfApp(context),
                const SizedBox(height: 65),
                DrawerListColumn(
                  activeIndex: activeIndex,
                  onItemTapped: onItemTapped,
                ),
              ],
            ),
          )
        ],
      ),
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
