import 'package:flutter/material.dart';
import 'package:travel_application/models/travel_news_model.dart';
import 'package:travel_application/screens/news/checkin_news_screen.dart';
import 'package:travel_application/screens/news/culinary_news_screen.dart';
import 'package:travel_application/screens/news/cultural_news_screen.dart';
import 'package:travel_application/screens/news/seasonal_news_screen.dart';

import '../../theme.dart';

class TravelNewsScreen extends StatelessWidget {
  final TravelNews news;
  const TravelNewsScreen({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget detailWidget;
    switch (news.title) {
      case 'Bốn mùa Hàn Quốc':
        detailWidget = SeasonalNewsScreen(news: news);
        break;
      case 'Văn hóa Hàn Quốc':
        detailWidget = CulturalNewsScreen(news: news);
        break;
      case 'Ẩm thực Hàn Quốc':
        detailWidget = CulinaryNewsScreen(news: news);
        break;
      case 'Check in':
        detailWidget = CheckinNewsScreen(news: news);
        break;
      default:
        detailWidget = Container();
        break;
    }

    return Scaffold(
      appBar: AppBar(
          title: Text(
            news.title,
            style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: AppColors.white),
          ),
          actions: [
            IconButton(
                onPressed: (){},
                icon: const Icon(Icons.share)
            )
          ],
          iconTheme: const IconThemeData(color: AppColors.white),
          backgroundColor: AppColors.blue),
      body: Center(
        child: detailWidget,
      ),
    );
  }
}
