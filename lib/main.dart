import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_application/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:travel_application/simple_bloc_observer.dart';
import 'package:user_repository/user_repository.dart';

import 'app_view.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = SimpleBlocObserver();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp(FirebaseUserRepository()));
}

class MyApp extends StatelessWidget {
  final UserRepository userRepository;

  const MyApp(this.userRepository, {super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider<AuthenticationBloc>(
              create: (_) => AuthenticationBloc(myUserRepository: userRepository)
          )
        ],
        child: MyAppView(),
    );
  }
}
