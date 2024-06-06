import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_application/app_view.dart';
import 'package:travel_application/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:travel_application/blocs/get_travel_bloc/get_travel_bloc.dart';
import 'package:travel_application/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:travel_application/screens/authentication/welcome_screen.dart';
import 'package:travel_application/screens/home/home_screen.dart';
import 'package:travel_repository/travel_repository.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Korea Travel',
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
          builder: (context, state){
            if(state.status == AuthenticationStatus.authenticated){
              return MultiRepositoryProvider(
                providers: [
                  BlocProvider(
                      create: (context) => SignInBloc(
                          userRepository: context.read<AuthenticationBloc>().userRepository
                      )
                  ),
                  // BlocProvider(
                  //   create: (context) => MyUserBloc(
                  //       myUserRepository: context.read<AuthenticationBloc>().userRepository
                  //   )..add(GetMyUser(
                  //       myUserId: context.read<AuthenticationBloc>().state.user!.uid
                  //   )),
                  // ),
                  // BlocProvider(
                  //     create: (context) => GetNewsBloc(
                  //         FirebaseNewsRepository()
                  //     )..add(GetNews())
                  // ),
                  BlocProvider(
                      create: (context) => GetTravelBloc(
                          FirebaseTravelRepository()
                      )..add(GetTravel())
                  ),
                ],
                child: MyAppView(),
              );
            } else{
              return const WelcomeScreen();
            }
          }
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
