import 'package:flutter/material.dart';
import 'package:movie_explorer/app/core/values/app_colors.dart';
import 'package:movie_explorer/app/core/widgets/app_bar_title.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String appBarTitleText;
  final List<Widget>? actions;
  final bool isBackButtonEnabled;

  CustomAppBar({
    Key? key,
    required this.appBarTitleText,
    this.actions,
    this.isBackButtonEnabled = true,
  }) : super(key: key);

  @override
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appBarColor,
      centerTitle: true,
      elevation: 0,
      automaticallyImplyLeading: isBackButtonEnabled,
      actions: actions,
      iconTheme: const IconThemeData(color: AppColors.appBarIconColor),
      title: AppBarTitle(text: appBarTitleText),
    );
  }
}
