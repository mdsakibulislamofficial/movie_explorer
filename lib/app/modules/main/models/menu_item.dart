import 'package:movie_explorer/app/modules/main/models/menu_code.dart';

class BottomNavItem {
  final String navTitle;
  final String icon;
  final MenuCode menuCode;

  const BottomNavItem(
      {required this.navTitle, required this.icon, required this.menuCode});
}
