import 'package:bank_dash/src/core/resources/color_manager.dart';
import 'package:bank_dash/src/core/resources/font_manager.dart';
import 'package:bank_dash/src/core/resources/strings_manager.dart';
import 'package:bank_dash/src/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';

class MyCardsHeader extends StatelessWidget {
  const MyCardsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Row(
            children: [
              _myCards(context),
              const Spacer(),
              _textButton(context),
            ],
          ),
        ),

        // ),
      ],
    );
  }

  Widget _textButton(BuildContext context) {
    return Text(
      StringsManager.seeAll,
      style: StyleManager.getSemiBoldStyle(
        context,
        fontSize: FontSize.s22,
      ),
    );
  }

  Text _myCards(BuildContext context) {
    return Text(
      StringsManager.myCards,
      style: StyleManager.getSemiBoldStyle(
        context,
        fontSize: FontSize.s22,
        color: ColorManager.primary2,
      ),
    );
  }
}
