import 'package:bank_dash/src/core/resources/strings_manager.dart';
import 'package:bank_dash/src/features/dashboard/presentation/dashboard_screen.dart';
import 'package:bank_dash/src/features/main_screen/presentation/widgets/custom_drawer.dart';
import 'package:bank_dash/src/features/main_screen/presentation/widgets/desk_top_app_bar.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  int _activeIndex = 0;
  String title = StringsManager.overview;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: CustomDrawer(
              activeIndex: _activeIndex,
              onItemTapped: _onItemTapped,
            ),
          ),
          const SizedBox(width: 2),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                DeskTopAppBar(title: title),
                _getContentForActiveItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _getContentForActiveItem() {
    switch (_activeIndex) {
      case 0:
        return const DashboardScreen();
      case 1:
        return const Center(child: Text('Transactions Content'));
      // Add more cases for each menu item
      default:
        return const Center(child: Text('Select an option from the drawer'));
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _activeIndex = index;
      switch (index) {
        case 0:
          title = StringsManager.overview;

        case 1:
          title = StringsManager.transactions;

        case 2:
          title = StringsManager.accounts;

        case 3:
          title = StringsManager.investments;

        case 4:
          title = StringsManager.creditCards;

        case 5:
          title = StringsManager.loans;

        case 6:
          title = StringsManager.services;

        case 7:
          title = StringsManager.myPrivileges;

        case 8:
          title = StringsManager.setting;

        default:
          StringsManager.dashboard;
      }
    });
  }
}
