import 'package:flutter/material.dart';
import 'package:movie_explorer/app/core/base/base_view.dart';
import 'package:movie_explorer/app/core/values/text_styles.dart';
import 'package:movie_explorer/app/core/widgets/custom_app_bar.dart';

import '../controllers/favorite_controller.dart';

class FavoriteView extends BaseView<FavoriteController> {
  FavoriteView({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(
      appBarTitleText: 'Favorite',
    );
  }

  @override
  Widget body(BuildContext context) {
    return Center(
      child: Text(
        'FavoriteView is working',
        style: titleStyle,
      ),
    );
  }
}
