import 'package:bank_dash/src/core/resources/assets_manager.dart';
import 'package:bank_dash/src/core/resources/color_manager.dart';
import 'package:bank_dash/src/core/resources/font_manager.dart';
import 'package:bank_dash/src/core/resources/strings_manager.dart';
import 'package:bank_dash/src/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeskTopAppBar extends StatelessWidget {
  const DeskTopAppBar({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(color: ColorManager.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Row(children: [
          _title(context),
          const Spacer(),
          Expanded(
            child: _searchBar(context),
          ),
          const SizedBox(width: 30),
          _customCircle(AssetsManager.svgSettingsOutFilled),
          const SizedBox(width: 30),
          _customCircle(AssetsManager.svgNotification),
          const SizedBox(width: 35),
          _profileImage()
        ]),
      ),
    );
  }

  Widget _profileImage() {
    return const CircleAvatar(
      radius: 30,
      backgroundColor: ColorManager.softCloud,
      backgroundImage: AssetImage(AssetsManager.tempMyImage),
    );
  }

  Widget _customCircle(String icon) {
    return CircleAvatar(
      backgroundColor: ColorManager.softCloud,
      radius: 25,
      child: SvgPicture.asset(icon),
    );
  }

  Widget _title(BuildContext context) {
    return Text(
      title,
      style: StyleManager.getBoldStyle(context,
          color: ColorManager.primary2, fontSize: FontSize.s28),
    );
  }

  Widget _searchBar(BuildContext context) {
    return SearchBar(
      leading: SvgPicture.asset(AssetsManager.svgSearchIcon),
      hintText: StringsManager.searchForSomething,
      hintStyle: WidgetStatePropertyAll(
        StyleManager.getRegularStyle(
          context,
          fontSize: FontSize.s15,
          color: ColorManager.mutedBlue,
        ),
      ),
    );
  }
}
