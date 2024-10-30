import 'package:bank_dash/src/core/resources/assets_manager.dart';
import 'package:bank_dash/src/core/resources/color_manager.dart';
import 'package:bank_dash/src/core/resources/font_manager.dart';
import 'package:bank_dash/src/core/resources/strings_manager.dart';
import 'package:bank_dash/src/core/resources/styles_manager.dart';
import 'package:bank_dash/src/features/dashboard/presentation/widgets/quick_transfer_horizontal_item.dart';
import 'package:bank_dash/src/features/dashboard/presentation/widgets/quick_transfer_vertical_item.dart';
import 'package:bank_dash/src/features/main_screen/presentation/widgets/text_fileld.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class QuickTransfer extends StatelessWidget {
  const QuickTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _myTitle(context, text: StringsManager.quickTransfer),
        const SizedBox(height: 20),
        Container(
          height: 276,
          padding: EdgeInsets.symmetric(
              horizontal: 25, vertical: width > 1320 ? 0 : 2),
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              width > 1320 ? _people() : _peopleVertical(),
              SizedBox(height: width > 1320 ? 29 : 2),
              width > 1320
                  ? _amountSectionHorizontal(context)
                  : _amountSectionVertical(context),
            ],
          ),
        ),
      ],
    );
  }

  Widget _amountSectionVertical(context) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          const SizedBox(height: 5),
          Row(
            children: [
              Expanded(
                flex: 4,
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
                                const Flexible(child: SizedBox(width: 11)),
                                Flexible(
                                    child: SvgPicture.asset(
                                        AssetsManager.svgSend)),
                              ]),
                        );
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
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
          )
        ],
      ),
    );
  }

  Widget _amountSectionHorizontal(BuildContext context) {
    return Flexible(
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
                            const Flexible(child: SizedBox(width: 11)),
                            Flexible(
                                child: SvgPicture.asset(AssetsManager.svgSend)),
                          ]),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
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

  Widget _people() {
    return Row(
      children: [
        const QuickTransferVerticalItem(
          name: "Ahmed Hussein",
          job: "Ceo",
        ),
        const SizedBox(width: 33),
        const QuickTransferVerticalItem(
          name: "Randy Press",
          job: "Director",
        ),
        const SizedBox(width: 33),
        const QuickTransferVerticalItem(
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

  Widget _peopleVertical() {
    return const Column(
      children: [
        QuickTransferHorizontalItem(
          name: "Ahmed Hussein",
          job: "Ceo",
        ),
        SizedBox(width: 33),
        QuickTransferHorizontalItem(
          name: "Randy Press",
          job: "Director",
        ),
        SizedBox(width: 33),
        QuickTransferHorizontalItem(
          name: "Workman",
          job: "Designer",
        ),
        // const SizedBox(width: 33),
        // Flexible(
        //   child: Container(
        //     width: 50,
        //     height: 50,
        //     decoration: BoxDecoration(
        //       boxShadow: [
        //         BoxShadow(
        //           color: ColorManager.gray.withOpacity(0.5),
        //           blurRadius: 4,
        //           spreadRadius: 1,
        //         )
        //       ],
        //       color: ColorManager.white,
        //       shape: BoxShape.circle,
        //     ),
        //     child: Center(
        //       child: SvgPicture.asset(
        //         AssetsManager.svgArrowForward,
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
