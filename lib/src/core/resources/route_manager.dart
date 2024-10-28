import 'package:bank_dash/src/features/main_screen/presentation/views/main_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  // if you change this to "/mainScreen" flutter will but default route in stack first then navigate to mainScreen screen
  static const String mainScreen = '/';
}

class RouteGenerator {
  // static late OtpTimerCubit otpTimerCubit;

  RouteGenerator() {
    // otpTimerCubit = getIt<OtpTimerCubit>();
  }

  Route? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.mainScreen:
        return MaterialPageRoute(
          builder: (_) => const MainScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          ),
        );
    }
  }
}
