import 'package:bank_dash/src/app/app_layout.dart';
import 'package:bank_dash/src/features/main_screen/presentation/widgets/desktop_layout/desktop_layout.dart';
import 'package:bank_dash/src/features/main_screen/presentation/widgets/mobile_layout/mobile_layout.dart';
import 'package:bank_dash/src/features/main_screen/presentation/widgets/tablet_layout/tablet_layout.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => const MobileLayout(),
      tabletLayout: (context) => const TabletLayout(),
      desktopLayout: (context) => const DesktopLayout(),
    );
  }
}
