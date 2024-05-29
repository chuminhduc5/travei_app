import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_application/blocs/get_travel_bloc/get_travel_bloc.dart';
import 'package:travel_application/theme.dart';

import '../../blocs/my_user_bloc/my_user_bloc.dart';
import '../../blocs/sign_in_bloc/sign_in_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blue,
        title: BlocBuilder<MyUserBloc, MyUserState>(
          builder: (context, state) {
            if (state.status == MyUserStatus.success) {
              return Row(
                children: [
                  const SizedBox(width: 10),
                  //Text("Welcome ${state.user!.name}"),
                  Text('Welcome to travel Korea!')
                ],
              );
            } else {
              return Container();
            }
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                context.read<SignInBloc>().add(SignOutRequired());
                print('LogOut');
              },
              icon: const Icon(
                CupertinoIcons.square_arrow_right,
                color: Colors.white,
              ))
        ],
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: BlocBuilder<GetTravelBloc, GetTravelState>(
              builder: (context, state) {
            if (state is GetTravelSuccess) {
              return ListView.builder(
                  itemCount: state.travels.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Text('Các tour du lịch'),
                    );
                    // return Container(
                    //   margin: const EdgeInsets.only(bottom: 15),
                    //   decoration: const BoxDecoration(
                    //     color: Colors.white,
                    //   ),
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(10.0),
                    //     child: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         ClipRRect(
                    //           child: Image.asset('assets/images/korea_seoul.png', width: MediaQuery.of(context).size.width, height: 160, fit: BoxFit.cover),
                    //         ),
                    //         Text('TOUR 6N5Đ HÀN QUỐC NGHỈ LỄ 30.04', softWrap: true, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                    //         Row(
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             const Icon(Icons.location_on_outlined, size: 16,),
                    //             const SizedBox(width: 10,),
                    //             Expanded(
                    //               child: Text(
                    //                 'Hành trình: HÀ NỘI - SEOUL - JEJU - NAMI - EVERLAND',
                    //                 softWrap: true,
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //
                    //         Row(
                    //           children: [
                    //             const Icon(Icons.access_time_outlined, size: 16,),
                    //             const SizedBox(width: 10,),
                    //             Text('Số ngày: 6 ngày 5 đêm')
                    //           ],
                    //         ),
                    //         Row(
                    //           children: [
                    //             const Icon(Icons.calendar_month, size: 16,),
                    //             const SizedBox(width: 10,),
                    //             Text('Ngày khởi hành: 28/04/2024')
                    //           ],
                    //         ),
                    //         Row(
                    //           children: [
                    //             const Icon(Icons.monetization_on_outlined, size: 16,),
                    //             const SizedBox(width: 10,),
                    //             Text('26.900.000 đ', style: const TextStyle(color: Colors.red))
                    //           ],
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // );
                  });
            } else if (state is GetTravelLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return const Center(
                child: Text('Chưa có tour du lịch...'),
              );
            }
          })),
    );
  }
}
