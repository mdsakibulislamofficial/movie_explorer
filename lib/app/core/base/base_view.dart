import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_explorer/app/core/base/base_controller.dart';
import 'package:movie_explorer/app/core/values/app_colors.dart';
import 'package:movie_explorer/app/core/widgets/loading.dart';

abstract class BaseView<Controller extends BaseController>
    extends GetView<Controller> {
  BaseView({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  PreferredSizeWidget? appBar(BuildContext context);
  Widget body(BuildContext context);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //sets ios status bar color
      backgroundColor: pageBackgroundColor(),
      appBar: appBar(context),
      key: globalKey,
      floatingActionButton: floatingActionButton(),
      body: pageContent(context),
      bottomNavigationBar: bottomNavigationBar(),
      drawer: drawer(),
    );
  }

  Widget pageContent(BuildContext context) {
    return SafeArea(
      child: body(context),
    );
  }

  Color pageBackgroundColor() {
    return AppColors.pageBackground;
  }

  Color statusBarColor() {
    return AppColors.pageBackground;
  }

  Widget? floatingActionButton() {
    return null;
  }

  Widget? bottomNavigationBar() {
    return null;
  }

  Widget? drawer() {
    return null;
  }

  Widget showLoading() {
    return const Loading();
  }
}
