import 'package:flutter/material.dart';
import 'package:movie_explorer/app/core/values/app_values.dart';
import 'package:movie_explorer/app/core/values/text_styles.dart';
import 'package:movie_explorer/app/modules/home/widgets/small_card.dart';

class SmallCardList extends StatelessWidget {
  final String title;
  const SmallCardList({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppValues.paddingDefault),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: titleStyle,
                ),
                InkWell(
                  onTap: () {},
                  child: Text('See All', style: highlightStyle),
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width / 2,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (context, index) => const SmallCard(),
            ),
          ),
        ],
      ),
    );
  }
}
