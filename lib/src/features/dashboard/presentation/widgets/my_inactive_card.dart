import 'package:bank_dash/src/core/resources/assets_manager.dart';
import 'package:bank_dash/src/core/resources/color_manager.dart';
import 'package:bank_dash/src/core/resources/font_manager.dart';
import 'package:bank_dash/src/core/resources/strings_manager.dart';
import 'package:bank_dash/src/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyInActiveCard extends StatelessWidget {
  const MyInActiveCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 235,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding:
                const EdgeInsetsDirectional.only(start: 26, top: 24, end: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _cardListTile(context),
                const SizedBox(height: 33 - 8),
                _cardDetails(context),
              ],
            ),
          ),
          const SizedBox(height: 40),
          _myCardFooter(context),
        ],
      ),
    );
  }

  Widget _cardDetails(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _cardDetailsStyle(
          context,
          type: StringsManager.cARDHOLDER,
          text: "Ahmed Hussein",
        ),
        const Flexible(child: SizedBox(width: 67)),
        _cardDetailsStyle(
          context,
          type: StringsManager.vALIDTHRU,
          text: "10/24",
        ),
      ],
    );
  }

  Column _cardDetailsStyle(
    BuildContext context, {
    required String text,
    required String type,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          type,
          style: StyleManager.getLatoRegularStyle(
            context,
            fontSize: FontSize.s12,
            color: ColorManager.grayishCornflower,
          ),
        ),
        const SizedBox(height: 3),
        Text(
          text,
          style: StyleManager.getLatoSemiBoldStyle(
            context,
            fontSize: FontSize.s15,
            color: ColorManager.primary2,
          ),
        ),
      ],
    );
  }

  Widget _cardListTile(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringsManager.balance,
              style: StyleManager.getLatoRegularStyle(
                context,
                fontSize: FontSize.s12,
                color: ColorManager.grayishCornflower,
              ),
            ),
            Text(
              r"$5,756",
              style: StyleManager.getLatoSemiBoldStyle(
                context,
                color: ColorManager.primary2,
                fontSize: FontSize.s20,
              ),
            ),
          ],
        ),
        const Spacer(),
        Image.asset(
          AssetsManager.chipCard,
          color: ColorManager.deepSlateRay,
        )
      ],
    );
  }

  Widget _myCardFooter(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(
        color: ColorManager.softIceBlue,
      ))),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(
          start: 26,
          end: 20,
          top: 22,
          bottom: 22,
        ),
        child: Row(
          children: [
            Text(
              "3778 **** **** 1234",
              style: StyleManager.getLatoSemiBoldStyle(
                context,
                color: ColorManager.primary2,
                fontSize: FontSize.s18,
              ),
            ),
            const Spacer(),
            SvgPicture.asset(AssetsManager.svgTwoEllipseInactive),
          ],
        ),
      ),
    );
  }
}
