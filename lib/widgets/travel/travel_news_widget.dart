import 'package:flutter/material.dart';

import '../../models/travel_news_model.dart';
import '../../theme.dart';

class TravelNewsWidget extends StatelessWidget {
  final TravelNews news;
  const TravelNewsWidget({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          color: AppColors.white,
          child: SizedBox(
            width: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                  child: Image.network(
                    news.image,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  child: Text(news.title, softWrap: true,),
                ),
              ],
            ),
          )
      ),
    );
  }
}
