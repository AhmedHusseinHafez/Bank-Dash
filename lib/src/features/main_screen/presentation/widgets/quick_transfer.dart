import 'package:bank_dash/src/core/resources/assets_manager.dart';
import 'package:bank_dash/src/core/resources/color_manager.dart';
import 'package:bank_dash/src/core/resources/font_manager.dart';
import 'package:bank_dash/src/core/resources/strings_manager.dart';
import 'package:bank_dash/src/core/resources/styles_manager.dart';
import 'package:bank_dash/src/features/main_screen/presentation/widgets/text_fileld.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class QuickTransfer extends StatelessWidget {
  const QuickTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _myTitle(context, text: StringsManager.quickTransfer),
        const SizedBox(height: 20),
        Container(
          height: 276,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              _people(),
              const SizedBox(height: 29),
              Flexible(
                child: Row(
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        StringsManager.writeAmount,
                        style: StyleManager.getRegularStyle(
                          context,
                          color: ColorManager.grayishCornflower,
                          fontSize: FontSize.s16,
                        ),
                      ),
                    ),
                    const SizedBox(width: 27),
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: DefaultTextFieldWidget(
                          hint: "525.50",
                          hintStyle: StyleManager.getRegularStyle(
                            context,
                            color: ColorManager.grayishCornflower,
                            fontSize: FontSize.s16,
                          ),
                          suffixIcon: LayoutBuilder(
                            builder: (context, constraints) {
                              double width = constraints.maxWidth;
                              return Container(
                                height: 50,
                                width: width / 2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: ColorManager.vividBlue,
                                ),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          StringsManager.send,
                                          style: StyleManager.getMediumStyle(
                                            context,
                                            color: ColorManager.white,
                                            fontSize: FontSize.s16,
                                          ),
                                        ),
                                      ),
                                      const Flexible(
                                          child: SizedBox(width: 11)),
                                      Flexible(
                                          child: SvgPicture.asset(
                                              AssetsManager.svgSend)),
                                    ]),
                              );
                            },
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _myTitle(BuildContext context, {required String text}) {
    return Text(
      text,
      style: StyleManager.getSemiBoldStyle(
        context,
        fontSize: FontSize.s22,
        color: ColorManager.primary2,
      ),
    );
  }

  Row _people() {
    return Row(
      children: [
        const ItemTile(
          name: "Ahmed Hussein",
          job: "Ceo",
        ),
        const SizedBox(width: 33),
        const ItemTile(
          name: "Randy Press",
          job: "Director",
        ),
        const SizedBox(width: 33),
        const ItemTile(
          name: "Workman",
          job: "Designer",
        ),
        const SizedBox(width: 33),
        Flexible(
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: ColorManager.gray.withOpacity(0.5),
                  blurRadius: 4,
                  spreadRadius: 1,
                )
              ],
              color: ColorManager.white,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: SvgPicture.asset(
                AssetsManager.svgArrowForward,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ItemTile extends StatelessWidget {
  const ItemTile({
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
