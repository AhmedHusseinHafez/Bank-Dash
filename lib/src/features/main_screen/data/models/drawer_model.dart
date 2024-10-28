import 'package:bank_dash/src/core/resources/assets_manager.dart';
import 'package:bank_dash/src/core/resources/strings_manager.dart';

class DrawerModel {
  final String title;
  final String inActiveIcon;
  final String activeIcon;

  DrawerModel({
    required this.title,
    required this.inActiveIcon,
    required this.activeIcon,
  });

  static List<DrawerModel> getDrawerList() {
    return [
      DrawerModel(
        title: StringsManager.dashboard,
        inActiveIcon: AssetsManager.svgHomeIconInactive,
        activeIcon: AssetsManager.svgHomeIconActive,
      ),
      DrawerModel(
        title: StringsManager.transactions,
        inActiveIcon: AssetsManager.svgTransactionsIconInactive,
        activeIcon: AssetsManager.svgTransactionsIconActive,
      ),
      DrawerModel(
        title: StringsManager.accounts,
        inActiveIcon: AssetsManager.svgUserIconInactive,
        activeIcon: AssetsManager.svgUserIconActive,
      ),
      DrawerModel(
        title: StringsManager.investments,
        inActiveIcon: AssetsManager.svgInvestmentsIconInactive,
        activeIcon: AssetsManager.svgInvestmentsIconActive,
      ),
      DrawerModel(
        title: StringsManager.creditCards,
        inActiveIcon: AssetsManager.svgCreditCardIconInactive,
        activeIcon: AssetsManager.svgCreditCardIconActive,
      ),
      DrawerModel(
        title: StringsManager.loans,
        inActiveIcon: AssetsManager.svgLoansIconInactive,
        activeIcon: AssetsManager.svgLoansIconActive,
      ),
      DrawerModel(
        title: StringsManager.services,
        inActiveIcon: AssetsManager.svgServicesIconInactive,
        activeIcon: AssetsManager.svgServicesIconActive,
      ),
      DrawerModel(
        title: StringsManager.myPrivileges,
        inActiveIcon: AssetsManager.svgMyPrivilegesIconInactive,
        activeIcon: AssetsManager.svgMyPrivilegesIconInactive,
      ),
      DrawerModel(
        title: StringsManager.setting,
        inActiveIcon: AssetsManager.svgSettingIconInactive,
        activeIcon: AssetsManager.svgSettingIconActive,
      ),
    ];
  }
}
