import 'package:bank_dash/src/features/main_screen/presentation/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  int _activeIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _activeIndex = index;
    });
  }

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
          Expanded(
            flex: 4,
            child: _getContentForActiveItem(),
          ),
        ],
      ),
    );
  }

  Widget _getContentForActiveItem() {
    switch (_activeIndex) {
      case 0:
        return const Center(child: Text('Dashboard Content'));
      case 1:
        return const Center(child: Text('Transactions Content'));
      // Add more cases for each menu item
      default:
        return const Center(child: Text('Select an option from the drawer'));
    }
  }
}
