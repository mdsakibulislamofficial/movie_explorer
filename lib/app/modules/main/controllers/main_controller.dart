import 'package:get/get.dart';
import 'package:movie_explorer/app/core/base/base_controller.dart';
import 'package:movie_explorer/app/modules/main/models/menu_code.dart';

class MainController extends BaseController {
  final _selectedMenuCodeController = MenuCode.HOME.obs;

  MenuCode get selectedMenuCode => _selectedMenuCodeController.value;

  final lifeCardUpdateController = false.obs;

  onMenuSelected(MenuCode menuCode) async {
    _selectedMenuCodeController(menuCode);
  }
}
