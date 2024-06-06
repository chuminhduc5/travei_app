import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_application/blocs/get_travel_bloc/get_travel_bloc.dart';
import 'package:travel_application/data/travel_news_data.dart';
import 'package:travel_application/screens/travel/detail_travel_screen.dart';
import 'package:travel_application/theme.dart';
import 'package:travel_application/widgets/travel/travel_discount_widget.dart';
import 'package:travel_application/widgets/travel/travel_tour_card_widget.dart';
import '../../blocs/sign_in_bloc/sign_in_bloc.dart';
import '../../data/travel_discount_data.dart';
import '../../widgets/travel/travel_news_widget.dart';
import '../travel/travel_news_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: BlocBuilder<GetTravelBloc, GetTravelState>(
                builder: (context, state) {
                  if (state is GetTravelSuccess) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Các chương trình khuyến mãi',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 180,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: travelDiscountList.length,
                            itemBuilder: (context, index) => Container(
                                width: 300,
                                margin: const EdgeInsets.only(right: 10),
                                child: TravelDiscountWidget(travelDiscount: travelDiscountList[index])),
                          ),
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          'Những điều thú vị về hàn quốc',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 170,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: travelNewsList.length,
                            itemBuilder: (context, index) => InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        TravelNewsScreen(news: travelNewsList[index])));
                              },
                              child: TravelNewsWidget(news: travelNewsList[index]),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          'Các tour du lịch hấp dẫn',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 10),
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            mainAxisSpacing: 10,
                            childAspectRatio: 25 / 12,
                          ),
                          itemCount: state.travels.length,
                          itemBuilder: (context, int i) {
                            return Material(
                              elevation: 3,
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          DetailTravelScreen(state.travels[i]),
                                    ),
                                  );
                                },
                                child: TravelTourCardWidget(
                                  picture: state.travels[i].picture,
                                  name: state.travels[i].name,
                                  date: state.travels[i].date,
                                  departureDate: state.travels[i].departureDate,
                                  price: state.travels[i].price,
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    );
                  } else if (state is GetTravelLoading) {
                    return const SizedBox();
                  } else {
                    return const Center(
                      child: Text('Không có tour du lịch nào'),
                    );
                  }
                },
              ),
            ),
          ),
          BlocBuilder<GetTravelBloc, GetTravelState>(
            builder: (context, state) {
              if (state is GetTravelLoading) {
                return const Center(
                  child: CircularProgressIndicator(color: AppColors.blue),
                );
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
