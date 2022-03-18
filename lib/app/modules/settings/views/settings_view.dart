import 'package:flutter/material.dart';
import 'package:movie_explorer/app/core/base/base_view.dart';
import 'package:movie_explorer/app/core/values/text_styles.dart';
import 'package:movie_explorer/app/core/widgets/custom_app_bar.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends BaseView<SettingsController> {
  SettingsView({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(
      appBarTitleText: 'Settings',
    );
  }

  @override
  Widget body(BuildContext context) {
    return Center(
      child: Text(
        'SettingsView is working',
        style: titleStyle,
      ),
    );
  }
}
