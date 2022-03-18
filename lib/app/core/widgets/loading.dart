import 'package:flutter/material.dart';
import 'package:movie_explorer/app/core/values/app_colors.dart';
import 'package:movie_explorer/app/core/values/app_values.dart';
import 'package:movie_explorer/app/core/widgets/elevated_container.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: ElevatedContainer(
        padding: EdgeInsets.all(AppValues.margin),
        child: CircularProgressIndicator(
          color: AppColors.colorPrimary,
        ),
      ),
    );
  }
}
