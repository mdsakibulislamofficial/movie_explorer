import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:movie_explorer/app/core/values/app_colors.dart';
import 'package:movie_explorer/app/core/values/app_values.dart';
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
    Color unselectedItemColor = const Color(0xFF7B859A);
    List<BottomNavItem> navItems = _getNavItems();
    return Obx(
      () => ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(AppValues.radius),
          topRight: Radius.circular(AppValues.radius),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: BottomNavigationBar(
            key: bottomNavKey,
            items: navItems
                .map(
                  (BottomNavItem navItem) => BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        "icons/${navItem.icon}",
                        height: AppValues.iconDefaultSize,
                        width: AppValues.iconDefaultSize,
                        color: navItems.indexOf(navItem) ==
                                navController.selectedIndex
                            ? selectedItemColor
                            : unselectedItemColor,
                      ),
                      label: navItem.navTitle,
                      tooltip: ""),
                )
                .toList(),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.bottomBarbgColor.withOpacity(0.4),
            selectedItemColor: selectedItemColor,
            unselectedItemColor: unselectedItemColor,
            currentIndex: navController.selectedIndex,
            onTap: (index) {
              navController.updateSelectedIndex(index);
              onNewMenuSelected(navItems[index].menuCode);
            },
          ),
        ),
      ),
    );
  }

  List<BottomNavItem> _getNavItems() {
    return const [
      BottomNavItem(
        navTitle: 'Home',
        icon: 'home.svg',
        menuCode: MenuCode.HOME,
      ),
      BottomNavItem(
        navTitle: "Favorite",
        icon: 'star.svg',
        menuCode: MenuCode.FAVORITE,
      ),
      BottomNavItem(
        navTitle: 'Settings',
        icon: 'bars.svg',
        menuCode: MenuCode.SETTINGS,
      )
    ];
  }
}
