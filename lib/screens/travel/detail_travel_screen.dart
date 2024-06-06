import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_application/screens/travel/booking_screen.dart';
import 'package:travel_application/widgets/travel/button_booking_travel_widget.dart';
import 'package:travel_application/widgets/travel/slider_travel_widget.dart';
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
                // Build Body Content
                _buildBody(),

                // Build Booking Tour

                const SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ButtonBookingTravelWidget(widget.travel),
          )
        ],
      ),
    );
  }

  Widget _buildBody(){
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
                        style: const TextStyle(
                            color: Colors.black,
                            height: 1.5),
                      ),
                      const TextSpan(
                        text: '- Hàng không 5*: Asiana Airlines\n',
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, height: 1.5),
                      ),
                      TextSpan(
                        text: '- Khởi hành: ${widget.travel.departureDate}\n',
                        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, height: 1.5),
                      ),
                      TextSpan(
                        text: '${widget.travel.departureDate}\n',
                        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, height: 1.5),
                      ),
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
                      const TextSpan(
                        text: 'Ngày 2: Seoul - Jeju\n',
                        style: TextStyle(color: Colors.black, height: 1.5),
                      ),
                      const TextSpan(
                        text: 'Ngày 3: Jeju\n',
                        style: TextStyle(color: Colors.black, height: 1.5),
                      ),
                      const TextSpan(
                        text: 'Ngày 4: Jeju - Seoul\n',
                        style: TextStyle(color: Colors.black, height: 1.5),
                      ),
                      const TextSpan(
                        text: 'Ngày 5: Seoul - Nami\n',
                        style: TextStyle(color: Colors.black, height: 1.5),
                      ),
                      const TextSpan(
                        text: 'Ngày 6: Seoul - Hà Nội',
                        style: TextStyle(color: Colors.black, height: 1.5),
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
                const Text(
                  '(Áp dụng cho khách lẻ ghép đoàn)',
                  style: TextStyle(fontSize: 16, color: Colors.red),
                ),
                Center(
                  child: Table(
                    defaultColumnWidth: const FixedColumnWidth(140),
                    border: TableBorder.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 1,
                    ),
                    children: [
                      const TableRow(children: [
                        Column(
                          children: [Text('Độ tuổi')],
                        ),
                        Column(
                          children: [Text('Giá')],
                        ),
                      ]),
                      TableRow(children: [
                        const Column(
                          children: [Text('Người lớn')],
                        ),
                        Column(
                          children: [Text(widget.travel.price)],
                        ),
                      ]),
                      const TableRow(children: [
                        Column(
                          children: [Text('Trẻ em')],
                        ),
                        Column(
                          children: [Text('90%')],
                        ),
                      ]),
                      const TableRow(children: [
                        Column(
                          children: [Text('Em bé')],
                        ),
                        Column(
                          children: [Text('30%')],
                        ),
                      ]),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
