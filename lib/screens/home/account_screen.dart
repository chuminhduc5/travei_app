import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_application/blocs/my_user_bloc/my_user_bloc.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(16),
          child: BlocBuilder<MyUserBloc, MyUserState>(
            builder: (context, state) {
              if (state.status == MyUserStatus.success) {
                return Column(
                  children: [
                    Text("Welcome ${state.user!.name}"),
                    Text(state.user!.email),
                    Text(state.user!.phoneNumber),
                  ],
                );
              }
              else {
                return Container();
              }
            },
          ),
      ),
    );
  }
}
