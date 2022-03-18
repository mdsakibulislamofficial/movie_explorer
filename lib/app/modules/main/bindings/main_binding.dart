import 'package:get/get.dart';
import 'package:movie_explorer/app/modules/favorite/controllers/favorite_controller.dart';
import 'package:movie_explorer/app/modules/home/controllers/home_controller.dart';
import 'package:movie_explorer/app/modules/main/controllers/main_controller.dart';
import 'package:movie_explorer/app/modules/settings/controllers/settings_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(
      () => MainController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<FavoriteController>(
      () => FavoriteController(),
    );
    Get.lazyPut<SettingsController>(
      () => SettingsController(),
    );
  }
}
