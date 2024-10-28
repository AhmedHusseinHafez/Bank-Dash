import 'package:bank_dash/src/features/main_screen/data/models/drawer_model.dart';
import 'package:bank_dash/src/features/main_screen/presentation/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class DrawerListColumn extends StatelessWidget {
  final int activeIndex;
  final ValueChanged<int> onItemTapped;

  const DrawerListColumn({
    super.key,
    required this.activeIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    final drawerItems = DrawerModel.getDrawerList();

    return Column(
      children: List.generate(drawerItems.length, (index) {
        final model = drawerItems[index];
        final isActive = index == activeIndex;
        return CustomListTile(
          isActive: isActive,
          model: model,
          index: index,
          onItemTapped: onItemTapped,
        );
      }),
    );
  }
}
