import 'package:get/get.dart';

class BaseController extends GetxController {
  final logoutController = false.obs;

  final _refreshController = false.obs;
  refreshPage(bool refresh) => _refreshController(refresh);

  final _errorMessageController = ''.obs;
  String get errorMessage => _errorMessageController.value;
  showErrorMessage(String msg) {
    _errorMessageController(msg);
  }

  final _successMessageController = ''.obs;
  String get successMessage => _successMessageController.value;
  showSuccessMessage(String msg) => _successMessageController(msg);
}
