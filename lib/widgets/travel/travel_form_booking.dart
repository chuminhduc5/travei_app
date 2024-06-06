import 'package:flutter/material.dart';

import '../../theme.dart';


class TravelFormBooking extends StatelessWidget {
  final String hintext;
  final TextEditingController textController;
  const TravelFormBooking({Key? key, required this.hintext, required this.textController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints : const BoxConstraints(
          maxWidth: 600
      ),
      child: TextFormField(
        controller: textController,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(18),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.black,
              width: 0,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.blue,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          hintText: hintext,
        ),
      ),
    );
  }
}

