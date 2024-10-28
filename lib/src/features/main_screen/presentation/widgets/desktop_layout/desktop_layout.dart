import 'package:bank_dash/src/features/main_screen/presentation/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        const CustomDrawer(),
        Expanded(
          child: Container(),
        ),
      ],
    ));
  }
}
