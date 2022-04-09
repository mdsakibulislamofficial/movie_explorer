import 'package:flutter/material.dart';
import 'package:movie_explorer/app/core/values/app_colors.dart';
import 'package:movie_explorer/app/core/values/app_values.dart';
import 'package:movie_explorer/app/core/values/text_styles.dart';

class SmallCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? imageUrl;
  const SmallCard({
    Key? key,
    this.title = 'Movie Title',
    this.subtitle = 'Movie SubTitle',
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppValues.padding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.width / 4,
            width: MediaQuery.of(context).size.width / 4,
            color: AppColors.sliderColor,
            // TODO Add Small card image
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppValues.halfPadding,
            ),
            child: Text(
              title,
              style: cardTitleStyle,
            ),
          ),
          Text(
            subtitle,
            style: cardSubtitleStyle,
          ),
        ],
      ),
    );
  }
}
