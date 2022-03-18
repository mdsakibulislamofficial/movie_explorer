import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_explorer/app/core/base/base_view.dart';
import 'package:movie_explorer/app/modules/favorite/views/favorite_view.dart';
import 'package:movie_explorer/app/modules/home/views/home_view.dart';
import 'package:movie_explorer/app/modules/main/controllers/main_controller.dart';
import 'package:movie_explorer/app/modules/main/models/menu_code.dart';
import 'package:movie_explorer/app/modules/main/views/bottom_nav_bar.dart';
import 'package:movie_explorer/app/modules/settings/views/settings_view.dart';

class MainView extends BaseView<MainController> {
  MainView({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return Container(
      key: UniqueKey(),
      child: Obx(() => getPageOnSelectedMenu(controller.selectedMenuCode)),
    );
  }

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget? bottomNavigationBar() {
    return BottomNavBar(onNewMenuSelected: controller.onMenuSelected);
  }

  Widget getPageOnSelectedMenu(MenuCode menuCode) {
    final HomeView homeView = HomeView();
    final FavoriteView favoriteView = FavoriteView();
    final SettingsView settingsView = SettingsView();
    switch (menuCode) {
      case MenuCode.HOME:
        return homeView;
      case MenuCode.FAVORITE:
        favoriteView;
        return favoriteView;
      case MenuCode.SETTINGS:
        settingsView;
        return settingsView;
    }
  }
}
