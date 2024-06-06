import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_application/screens/travel/booking_screen.dart';
import 'package:travel_repository/travel_repository.dart';

import '../../theme.dart';

class ButtonBookingTravelWidget extends StatelessWidget {
  final Travel travel;
  const ButtonBookingTravelWidget(this.travel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Giá chỉ từ:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: travel.price,
                  style:
                      const TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const TextSpan(
                    text: '/',
                    style: TextStyle(fontSize: 16, color: Colors.black)),
                const TextSpan(
                    text: 'Người',
                    style: TextStyle(fontSize: 14, color: Colors.grey)),
              ]))
            ],
          ),
          ElevatedButton(
              onPressed: () {
                _showBooking(context);
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: AppColors.blue,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30, vertical: 15
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Text(
                'Đặt Tour Ngay',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }

  void _showBooking(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        // Cho phép màn hình phụ chiếm bất kỳ tỷ lệ nào được chỉ định
        builder: (context) {
          // Chỉnh sửa kích thước màn hình phụ theo màn hình chính
          return FractionallySizedBox(
            heightFactor: 3 / 4,
            child: BookingScreen(travel),
          );
        });
  }
}
