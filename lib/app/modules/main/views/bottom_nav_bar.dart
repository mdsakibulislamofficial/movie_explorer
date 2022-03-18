import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_explorer/app/core/values/app_colors.dart';
import 'package:movie_explorer/app/modules/main/controllers/bottom_nav_controller.dart';
import 'package:movie_explorer/app/modules/main/models/menu_code.dart';
import 'package:movie_explorer/app/modules/main/models/menu_item.dart';

class BottomNavBar extends StatelessWidget {
  final Function(MenuCode menuCode) onNewMenuSelected;
  BottomNavBar({Key? key, required this.onNewMenuSelected}) : super(key: key);

  final navController = BottomNavController();

  final Key bottomNavKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Color selectedItemColor = Colors.white;
    Color unselectedItemColor = Colors.grey;
    List<BottomNavItem> navItems = _getNavItems();
    return Obx(
      () => BottomNavigationBar(
        key: bottomNavKey,
        items: navItems
            .map(
              (BottomNavItem navItem) => BottomNavigationBarItem(
                  icon: Icon(navItem.icon),
                  label: navItem.navTitle,
                  tooltip: ""),
            )
            .toList(),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.colorAccent,
        selectedItemColor: selectedItemColor,
        unselectedItemColor: unselectedItemColor,
        currentIndex: navController.selectedIndex,
        onTap: (index) {
          navController.updateSelectedIndex(index);
          onNewMenuSelected(navItems[index].menuCode);
        },
      ),
    );
  }

  List<BottomNavItem> _getNavItems() {
    return const [
      BottomNavItem(
        navTitle: 'Home',
        icon: Icons.home_outlined,
        menuCode: MenuCode.HOME,
      ),
      BottomNavItem(
          navTitle: "Favorite",
          icon: Icons.star_outline_rounded,
          menuCode: MenuCode.FAVORITE),
      BottomNavItem(
          navTitle: 'Settings',
          icon: Icons.settings,
          menuCode: MenuCode.SETTINGS)
    ];
  }
}
