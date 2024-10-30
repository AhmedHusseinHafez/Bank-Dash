import 'package:bank_dash/src/core/resources/color_manager.dart';
import 'package:bank_dash/src/core/resources/font_manager.dart';
import 'package:flutter/material.dart';

mixin AppTheme implements ThemeData {
  static ThemeData get kLightTheme => ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,

        //! Scaffold Color
        scaffoldBackgroundColor: ColorManager.skyBlue,
        // primaryColor: ColorManager.primary,
        //       // primaryColorLight: ,
        //       // primaryColorDark: ,
        //       // disabledColor: ColorManager.whiteWithOpacity30,
        //       // splashColor: ,  //ripple effect

        //!Divider
        dividerTheme: const DividerThemeData(
          color: ColorManager.borderGray,
          thickness: 1,
        ),

        //       //!App bar
        //       appBarTheme: AppBarTheme(
        //         systemOverlayStyle: Platform.isIOS
        //             ? null
        //             : const SystemUiOverlayStyle(
        //                 statusBarColor: ColorManager.transparent,
        //                 statusBarIconBrightness: Brightness.light,
        //                 systemNavigationBarColor: ColorManager.richBlack,
        //               ),
        //         centerTitle: true,
        //         foregroundColor: ColorManager.white,
        //         elevation: 0.0,
        //         backgroundColor: Colors.transparent,
        //         titleTextStyle: _myTextTheme().titleLarge,
        //       ),

        //       //! Page Transition
        //       pageTransitionsTheme: const PageTransitionsTheme(
        //         builders: {
        //           TargetPlatform.android: ZoomPageTransitionsBuilder(),
        //           TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
        //         },
        //       ),

        //       //! Action Icon
        //       actionIconTheme: ActionIconThemeData(
        //         backButtonIconBuilder: (context) {
        //           return const Icon(
        //             size: 30,
        //             Icons.arrow_back_rounded,
        //           );
        //         },
        //       ),

        //!ElevatedButtonTheme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            fixedSize: const Size(266, 62),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
            // backgroundColor: ColorManager.primary,
            foregroundColor: ColorManager.white,
            // textStyle: StyleManager.getRegularStyle(fontSize: FontSize.s18),
            surfaceTintColor: ColorManager.white,
          ),
        ),

        fontFamily: FontConstants.defaultFontFamily,

        //!TextTheme
        // textTheme: _myTextTheme(),

        //       textSelectionTheme: const TextSelectionThemeData(
        //         cursorColor: ColorManager.secondary,
        //         selectionColor: ColorManager.secondary,
        //         selectionHandleColor: ColorManager.secondary,
        //       ),

        //! TFF Theme
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(20),

          filled: true,

          fillColor: ColorManager.textFiledBackground,

          // hintStyle: _getTFFFontStyle(),
          // labelStyle: _getTFFFontStyle(),
          // errorStyle: _getTFFFontStyle(error: true),
          //enabledBorder the border before click on field
          enabledBorder: _getTFFBorderStyle(),
          //focusedBorder the border after click on field
          // focusedBorder: _getTFFBorderStyle(color: ColorManager.primary),
          errorBorder: _getTFFBorderStyle(color: ColorManager.coral),
          focusedErrorBorder: _getTFFBorderStyle(),
          // disabledBorder: _getTFFBorderStyle(),
          border: _getTFFBorderStyle(),
          // iconColor: ColorManager.secondary,
          // suffixIconColor: ColorManager.secondary,
        ),

        textButtonTheme: const TextButtonThemeData(
          style: ButtonStyle(
            padding: WidgetStatePropertyAll<EdgeInsets>(EdgeInsets.zero),
            backgroundColor:
                WidgetStatePropertyAll<Color>(ColorManager.transparent),
            foregroundColor:
                WidgetStatePropertyAll<Color>(ColorManager.primary2),
            // textStyle: WidgetStatePropertyAll<TextStyle>(
            //   StyleManager.getLightStyle(fontSize: FontSize.s16),
            // ),
          ),
        ),

        //       iconButtonTheme: IconButtonThemeData(
        //         style: ButtonStyle(
        //           backgroundColor:
        //               const MaterialStatePropertyAll<Color>(ColorManager.transparent),
        //           iconColor:
        //               const MaterialStatePropertyAll<Color>(ColorManager.white),
        //           iconSize: MaterialStatePropertyAll<double>(8.w),
        //         ),
        //       ),

        listTileTheme: ListTileThemeData(
          tileColor: ColorManager.whiteSmoke,
          // textColor: ColorManager.white,
          // contentPadding: EdgeInsets.symmetric(
          //   vertical: 4.5.h,
          //   horizontal: 9.w,
          // ),
          // visualDensity:
          //     const VisualDensity(vertical: VisualDensity.maximumDensity),
          // VisualDensity.comfortable,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          // titleTextStyle: StyleManager.getSemiBoldStyle(
          //   fontSize: FontSize.s16,
          // ),
          // subtitleTextStyle: StyleManager.getRegularStyle(
          //   fontSize: FontSize.s12,
          //   color: ColorManager.gray,
          // ),
          // horizontalTitleGap: 21.w,
        ),

        //! search bar
        searchBarTheme: SearchBarThemeData(
          backgroundColor: WidgetStateProperty.all(
            ColorManager.softCloud,
          ),
          elevation: const WidgetStatePropertyAll(0),

          padding: const WidgetStatePropertyAll(
            EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 25,
            ),
          ),
          // shape: MaterialStatePropertyAll(
          //   RoundedRectangleBorder(
          //     side: const BorderSide(color: ColorManager.deepCharcoal),
          //     borderRadius: BorderRadius.circular(100.r),
          //   ),
          // ),
          // textStyle: MaterialStatePropertyAll(
          //   _myTextTheme().titleSmall,
          // ),
          // hintStyle: WidgetStatePropertyAll(
          //   StyleManager.getLightStyle(
          //     color: ColorManager.whiteWithOpacity30,
          //     fontSize: FontSize.s13,
          //   ),
          // ),
        ),

        //       //! Bottom Nav Bar Theme
        //       bottomNavigationBarTheme: BottomNavigationBarThemeData(
        //         selectedLabelStyle:
        //             StyleManager.getRegularStyle(fontSize: FontSize.s12),
        //         unselectedLabelStyle:
        //             StyleManager.getRegularStyle(fontSize: FontSize.s12),
        //         backgroundColor: ColorManager.richBlack,
        //         showSelectedLabels: true,
        //         showUnselectedLabels: true,
        //         selectedItemColor: ColorManager.secondary,
        //         unselectedItemColor: ColorManager.charcoalGray,
        //         type: BottomNavigationBarType.fixed,
        //         elevation: 0,
        //       ),

        //       //! Checkbox Theme
        //       checkboxTheme: CheckboxThemeData(
        //         side: const BorderSide(width: 1),
        //         fillColor: const MaterialStatePropertyAll(ColorManager.secondary),
        //         checkColor: const MaterialStatePropertyAll(ColorManager.white),
        //         shape:
        //             RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
        //       ),

        //       //       radioTheme: const RadioThemeData(
        //       //         fillColor: MaterialStatePropertyAll<Color?>(Colors.black),
        //       //       ),
        //       ///       //! Switch Theme
        //       //       switchTheme: SwitchThemeData(
        //       //         thumbColor: MaterialStateProperty.all(ColorManager.white),
        //       //         trackColor: MaterialStateProperty.all(Colors.green),
        //       //       ),

        //       //       ///! Bottom Sheet Theme
        //       //       bottomSheetTheme: BottomSheetThemeData(
        //       //         backgroundColor: ColorManager.white,
        //       //         // dragHandleSize: Size(100.w, 3.h),
        //       //         // dragHandleColor: ColorManager.lightGrey,
        //       //         shape: RoundedRectangleBorder(
        //       //           borderRadius: BorderRadius.only(
        //       //             topLeft: Radius.circular(30.r),
        //       //             topRight: Radius.circular(30.r),
        //       //           ),
        //       //         ),
        //       //       ),
        drawerTheme: const DrawerThemeData(
          backgroundColor: ColorManager.white,
        ),
        //     );
      );
  // static TextStyle _getTFFFontStyle({bool? error}) {
  //   return error ?? false
  //       ? StyleManager.getLightStyle(
  //           color: ColorManager.coral,
  //           fontSize: FontSize.s16,
  //         )
  //       : StyleManager.getLightStyle(
  //           color: ColorManager.gray,
  //           fontSize: FontSize.s16,
  //         );
  // }

  static InputBorder _getTFFBorderStyle({Color? color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color ?? ColorManager.whiteSmoke,
      ),
      borderRadius: BorderRadius.circular(12),
    );
  }

  // static TextTheme _myTextTheme() {
  //   return TextTheme(
  //     //!Label
  //     labelLarge: StyleManager.getBoldStyle(fontSize: FontSize.s20),
  //     labelMedium: StyleManager.getMediumStyle(fontSize: FontSize.s16),
  //     labelSmall: StyleManager.getRegularStyle(fontSize: FontSize.s12),

  //     //!Body
  //     bodyLarge: StyleManager.getRegularStyle(fontSize: FontSize.s16),
  //     bodyMedium: StyleManager.getRegularStyle(fontSize: FontSize.s14),
  //     bodySmall: StyleManager.getRegularStyle(fontSize: FontSize.s12),

  //     //! Display
  //     displayLarge: StyleManager.getLightStyle(
  //       fontSize: FontSize.s57,
  //       letterSpacing: -1.5,
  //     ),
  //     displayMedium: StyleManager.getRegularStyle(
  //       fontSize: FontSize.s45,
  //       letterSpacing: -0.5,
  //     ),
  //     displaySmall: StyleManager.getRegularStyle(fontSize: FontSize.s36),

  //     //!Title
  //     titleLarge: StyleManager.getRegularStyle(
  //       fontSize: FontSize.s22,
  //       letterSpacing: -0.5,
  //     ),
  //     titleMedium: StyleManager.getMediumStyle(
  //       fontSize: FontSize.s16,
  //       letterSpacing: 0.15,
  //     ),
  //     titleSmall: StyleManager.getMediumStyle(
  //       fontSize: FontSize.s14,
  //       letterSpacing: 0.1,
  //     ),

  //     //!Headline
  //     headlineLarge: StyleManager.getRegularStyle(
  //       fontSize: FontSize.s60,
  //       letterSpacing: -2.0,
  //     ),
  //     headlineMedium: StyleManager.getRegularStyle(
  //       fontSize: FontSize.s48,
  //       letterSpacing: -0.5,
  //     ),
  //     headlineSmall: StyleManager.getRegularStyle(fontSize: FontSize.s36),
  //   );
  // }
}
