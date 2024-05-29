import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_application/screens/authentication/sign_in_screen.dart';
import 'package:travel_application/screens/authentication/sign_up_screen.dart';
import 'package:travel_application/theme.dart';


import '../../blocs/authentication_bloc/authentication_bloc.dart';
import '../../blocs/sign_in_bloc/sign_in_bloc.dart';
import '../../blocs/sign_up_bloc/sign_up_bloc.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  child: Image.asset('assets/images/logo.png', width: 350, height: 300, fit: BoxFit.cover,),
                ),
                // const Text('Welcome to travel Korea!',
                //     style:
                //     TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.blue)),
                // const SizedBox(
                //   height: 30,
                // ),
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.transparent), // Loại bỏ viền dưới
                    ),
                  ),
                  child: TabBar(
                    controller: tabController,
                    unselectedLabelColor: Theme.of(context)
                        .colorScheme
                        .onBackground
                        .withOpacity(0.5),
                    labelColor: AppColors.blue,
                    tabs: const [
                      Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Text(
                          'Đăng nhập',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Text(
                          'Đăng ký',
                          style: TextStyle(fontSize: 18),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(controller: tabController, children: [
                    BlocProvider<SignInBloc>(
                      create: (context) => SignInBloc(
                          userRepository: context.read<AuthenticationBloc>().userRepository
                      ),
                      child: const SignInScreen(),
                    ),
                    BlocProvider<SignUpBloc>(
                      create: (context) => SignUpBloc(
                          userRepository: context.read<AuthenticationBloc>().userRepository
                      ),
                      child: const SignUpScreen(),
                    ),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
