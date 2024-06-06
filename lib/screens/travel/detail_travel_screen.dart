import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_application/blocs/get_travel_bloc/get_travel_bloc.dart';
import 'package:travel_application/screens/travel/booking_screen.dart';
import 'package:travel_application/widgets/travel/button_booking_travel_widget.dart';
import 'package:travel_application/widgets/travel/slider_travel_widget.dart';
import 'package:travel_application/widgets/travel/table_price_widget.dart';
import 'package:travel_repository/travel_repository.dart';

import '../../theme.dart';

class DetailTravelScreen extends StatefulWidget {
  final Travel travel;

  const DetailTravelScreen(this.travel, {super.key});

  @override
  State<DetailTravelScreen> createState() => _DetailTravelScreenState();
}

class _DetailTravelScreenState extends State<DetailTravelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(widget.travel.name,
            style: const TextStyle(fontSize: 20, color: AppColors.white)),
        iconTheme: const IconThemeData(color: AppColors.white),
        backgroundColor: AppColors.blue,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                _buildBody(),

              const SizedBox(height: 80,),
              ],
            )
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ButtonBookingTravelWidget(widget.travel),
          )
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        children: [
          SliderTravelWidget(widget.travel),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'LỊCH TRÌNH: ${widget.travel.journey}\n',
                        style: const TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                          fontSize: 17,
                        ),
                      ),
                      const TextSpan(
                        text: '- Thời gian: ',
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            height: 1.5),
                      ),
                      TextSpan(
                        text: '${widget.travel.date}\n',
                        style:
                        const TextStyle(color: Colors.black, height: 1.5,  fontWeight: FontWeight.bold,),
                      ),
                      const TextSpan(
                        text: '- Hàng không 5*: Asiana Airlines\n',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            height: 1.5),
                      ),
                      TextSpan(
                        text: '- Khởi hành: ${widget.travel.departureDate}\n',
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            height: 1.5),
                      ),
                      // TextSpan(
                      //   text: '${widget.travel.departureDate}\n',
                      //   style: const TextStyle(
                      //       color: Colors.black,
                      //       fontWeight: FontWeight.bold,
                      //       height: 1.5),
                      // ),
                      const TextSpan(
                        text: 'Lịch trình tour\n',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            height: 1.5),
                      ),
                      TextSpan(
                        text: widget.travel.description,
                        style:
                        const TextStyle(color: Colors.black, height: 1.5),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'GIÁ TOUR TRỌN GÓI: VNĐ/ KHÁCH',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Center(child: TablePriceWidget(price: widget.travel.price)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
