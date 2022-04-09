import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_explorer/app/core/values/app_colors.dart';
import 'package:movie_explorer/app/core/values/app_values.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 5,
      itemBuilder: (context, index, realIndex) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppValues.radius),
              color: AppColors.sliderColor,
              //TODO add slider image
              image: null),
        );
      },
      options: CarouselOptions(
        height: MediaQuery.of(context).size.width,
        autoPlay: true,
        viewportFraction: 1,
        autoPlayInterval: const Duration(seconds: 4),
      ),
    );
  }
}
