import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:keyboard_avoider/keyboard_avoider.dart';
import 'package:travel_repository/travel_repository.dart';

import '../../theme.dart';
import '../../widgets/travel/travel_form_booking.dart';

class BookingScreen extends StatefulWidget {
  final Travel travel;

  const BookingScreen(this.travel, {super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final Map<String, TextEditingController> controllers = {
    'name': TextEditingController(),
    'email': TextEditingController(),
    'phoneNumber': TextEditingController(),
    'address': TextEditingController(),
    'note': TextEditingController(),
    'person': TextEditingController(),
    'children': TextEditingController(),
    'baby': TextEditingController(),
  };

  @override
  void initState() {
    super.initState();
    _fetchUserData();
  }

  @override
  void dispose() {
    controllers.forEach((key, controller) {
      controller.dispose();
    });
    super.dispose();
  }

  Future<void> _fetchUserData() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      DocumentSnapshot userData = await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
      if (userData.exists) {
        controllers['name']!.text = userData['name'] ?? '';
        controllers['email']!.text = userData['email'] ?? '';
        controllers['phoneNumber']!.text = userData['phoneNumber'] ?? '';
        controllers['address']!.text = userData['address'] ?? '';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Ẩn nút back mặc định
        title: const Text('Đăng ký tour du lịch',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red)),
      ),
      body: KeyboardAvoider(
        autoScroll: true,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.travel.name,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                RichText(
                    text: TextSpan(children: <TextSpan>[
                      const TextSpan(
                          text: '- Hành trình: ',
                          style: TextStyle(color: Colors.black, fontSize: 16)),
                      TextSpan(
                          text: '${widget.travel.journey}\n',
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                      const TextSpan(
                          text: '- Số ngày: ',
                          style: TextStyle(color: Colors.black, fontSize: 16)),
                      TextSpan(
                          text: '${widget.travel.date}\n',
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                    ])),
                Container(
                  color: AppColors.blue,
                  child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      child: Text(
                        'Thông tin liên hệ',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  height: 1,
                  color: Colors.grey,
                ),
                TravelFormBooking(
                    hintext: 'Họ và tên',
                    textController: controllers['name']!),
                const SizedBox(
                  height: 20,
                ),
                TravelFormBooking(
                    hintext: 'Email', textController: controllers['email']!),
                const SizedBox(
                  height: 20,
                ),
                TravelFormBooking(
                    hintext: 'Số điện thoại',
                    textController: controllers['phoneNumber']!),
                const SizedBox(
                  height: 20,
                ),
                TravelFormBooking(
                    hintext: 'Địa chỉ',
                    textController: controllers['address']!),
                const SizedBox(
                  height: 20,
                ),
                TravelFormBooking(
                    hintext: 'Ghi chú', textController: controllers['note']!),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  height: 1,
                  color: Colors.grey,
                ),
                TravelFormBooking(
                    hintext: 'Người lớn',
                    textController: controllers['person']!),
                const SizedBox(
                  height: 20,
                ),
                TravelFormBooking(
                    hintext: 'Trẻ em (6 - 18 tuổi)',
                    textController: controllers['children']!),
                const SizedBox(
                  height: 20,
                ),
                TravelFormBooking(
                    hintext: 'Trẻ dưới 6 tuổi',
                    textController: controllers['baby']!),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildButtonBooking(context),
    );
  }

  Widget _buildButtonBooking(BuildContext context) {
    return Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Tổng giá trị tour:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: widget.travel.price,
                          style: const TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                    ]))
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  //_showDialog();
                  Navigator.pop(context);
                  print('Bạn đã đặt tour thành công');
                },
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: AppColors.blue,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: const Text(
                  'Đăng kí ngay',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
          ],
        ));
  }
}
