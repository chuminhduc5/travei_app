import 'package:flutter/material.dart';

import '../../theme.dart';

class MyButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String textButton;
  const MyButtonWidget({Key? key, required this.onPressed, required this.textButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              foregroundColor: AppColors.white,
              backgroundColor: AppColors.blue,
              padding: const EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
          child: Text(
            textButton,
            style: TextStyle(fontSize: 20),
          )),
    );
  }
}
