import 'package:flutter/material.dart';
import 'package:movie_explorer/app/core/base/base_view.dart';
import 'package:movie_explorer/app/core/values/text_styles.dart';
import 'package:movie_explorer/app/core/widgets/custom_app_bar.dart';
import '../controllers/home_controller.dart';

class HomeView extends BaseView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(
      appBarTitleText: 'Home',
    );
  }

  @override
  Widget body(BuildContext context) {
    return Center(
      child: Text(
        'HomeView is working',
        style: titleStyle,
      ),
    );
  }
}
