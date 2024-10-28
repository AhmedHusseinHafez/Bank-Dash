// import 'dart:convert';
// import 'dart:developer';
// import 'dart:math' as math;

// import 'package:crypto/crypto.dart';
// import 'package:espresso_dynamic_screen/src/core/resources/strings_manager.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// import 'package:intl/intl.dart';

// bool isArabic() {
//   return Intl.getCurrentLocale() == 'ar';
// }

// String generateNonce([int length = 32]) {
//   const charset =
//       '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
//   final random = math.Random.secure();
//   return List.generate(length, (_) => charset[random.nextInt(charset.length)])
//       .join();
// }

// String sha256ofString(String input) {
//   final bytes = utf8.encode(input);
//   final digest = sha256.convert(bytes);
//   return digest.toString();
// }

// String convertDateFormat(String iso8601Date) {
//   try {
//     DateTime dateTime = DateTime.parse(iso8601Date);
//     String dateString = DateFormat('yyyy-MM-dd', 'ar').format(dateTime);
//     return dateString;
//   } catch (e) {
//     return iso8601Date;
//   }
// }

// String? validateFullName(String? value) {
//   if (value == null || value.isEmpty) {
//     return StringsManager.pleaseEnterFullName;
//   } else if (value.length < 3) {
//     return StringsManager.pleaseEnterValidName;
//   }
//   return null;
// }

// String? validateAddress(String? value) {
//   if (value == null || value.isEmpty) {
//     return StringsManager.pleaseEnterAddress;
//   } else if (value.length < 6) {
//     return StringsManager.pleaseEnterCorrectAddress;
//   }
//   return null;
// }

// String? validateEmail(String? value) {
//   if (value == null || value.isEmpty) {
//     return StringsManager.pleaseEnterEmail;
//   } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
//     return StringsManager.emailNotValid;
//   }
//   return null;
// }

// String? validateMobile(String? value) {
//   if (value == null || value.isEmpty) {
//     return StringsManager.noPhoneNum;
//   }
//   // else if (countryCode != null) {
//   //   if (countryCode == "+966" && value.length < 8 || value.length >= 9) {
//   //     return StringsManager.phoneNumNotValid;
//   //   } else if (value.length < 6) {
//   //     return StringsManager.phoneNumNotValid;
//   //   }

//   // }

//   return null;
// }

// String? validatePassword(String? value) {
//   if (value == null || value.isEmpty) {
//     return StringsManager.enterPassword;
//   } else if (value.length < 6) {
//     return StringsManager.passwordNotValid;
//   } else if (!RegExp(
//           r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$')
//       .hasMatch(value)) {
//     return StringsManager.passwordNotValidFullMessage;
//   }
//   return null;
// }

// String? loginPasswordValidation(String? value) {
//   if (value == null || value.isEmpty) {
//     return StringsManager.enterPassword;
//   }
//   return null;
// }

// void showErrorToast(String errorMessage, BuildContext context) {
//   Fluttertoast.showToast(
//     msg: errorMessage,
//     toastLength: Toast.LENGTH_LONG,
//     gravity: ToastGravity.BOTTOM,
//     backgroundColor: Colors.red,
//   );
// }

// void showWarningToast(String warringMessage, BuildContext context) {
//   Fluttertoast.showToast(
//     msg: warringMessage,
//     toastLength: Toast.LENGTH_LONG,
//     gravity: ToastGravity.BOTTOM,
//     backgroundColor: Colors.orange,
//   );
// }

// void showSuccessToast(String doneMessage, BuildContext context) {
//   Fluttertoast.showToast(
//     msg: doneMessage,
//     toastLength: Toast.LENGTH_LONG,
//     gravity: ToastGravity.BOTTOM,
//     backgroundColor: const Color.fromARGB(255, 10, 197, 107),
//   );
// }

// String dateTimeFromJson(String value) {
//   DateTime dateTimeValue = DateTime.parse(value);
//   DateFormat dateFormat = DateFormat("yyyy-MM-dd");
//   String formattedDate = dateFormat.format(dateTimeValue);
//   return formattedDate;
// }

// bool isTablet(context) {
//   double screenWidth = MediaQuery.of(context).size.width;
//   double screenHeight = MediaQuery.of(context).size.height;

//   // You can adjust this threshold value according to your needs.
//   double tabletThreshold = 1000;
//   log("isTablet ${screenWidth >= tabletThreshold || screenHeight >= tabletThreshold}}");
//   return screenWidth >= tabletThreshold || screenHeight >= tabletThreshold;
// }

// String formatTime(int? timeInSeconds) {
//   if (timeInSeconds == null) {
//     timeInSeconds = 0;
//     return '00:00';
//   }
//   int minutes = timeInSeconds ~/ 60;
//   int seconds = timeInSeconds % 60;
//   return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
// }

// extension ImageExtension on num {
//   int cacheSize(BuildContext context) {
//     return (this * MediaQuery.of(context).devicePixelRatio).round();
//   }
// }
