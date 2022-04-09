import 'package:flutter/material.dart';
import 'package:movie_explorer/app/core/base/base_view.dart';
import 'package:movie_explorer/app/core/widgets/custom_app_bar.dart';
import 'package:movie_explorer/app/modules/home/widgets/home_slider.dart';
import 'package:movie_explorer/app/modules/home/widgets/small_card_list.dart';
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
    return ListView(
      scrollDirection: Axis.vertical,
      children: const [
        HomeSlider(),
        SmallCardList(
          title: 'Movie',
        ),
        SmallCardList(
          title: 'TV Show',
        ),
      ],
    );
  }
}
