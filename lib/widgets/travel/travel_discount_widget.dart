import 'package:flutter/material.dart';
import 'package:travel_application/theme.dart';

import '../../models/travel_discount_model.dart';

class TravelDiscountWidget extends StatelessWidget {
  final TravelDiscount travelDiscount;
  TravelDiscountWidget({Key? key, required this.travelDiscount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: NetworkImage(travelDiscount.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.black.withOpacity(0.7),
                Colors.transparent,
              ],
            ),
          ),
        ),
        Positioned(
          top: 15,
          left: 20,
          child: Text(
            'Du lịch ${travelDiscount.location}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Positioned(
            top: 50,
            left: 20,
            child: Text(
              'Giảm ngay',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            )),
        Positioned(
            top: 50,
            left: 120,
            child: Text(
              travelDiscount.discount,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30
              ),
            )),
        Positioned(
            bottom: 10,
            right: 10,
            child: ElevatedButton(
                onPressed: () {},
                child: const Text('Xem ngay', style: TextStyle(color: AppColors.blue),)
            )
        ),
      ],
    );
  }
}
