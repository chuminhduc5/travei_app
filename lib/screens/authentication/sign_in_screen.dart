import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_application/widgets/authentication/button_widget.dart';

import '../../blocs/sign_in_bloc/sign_in_bloc.dart';
import '../../theme.dart';
import '../../widgets/authentication/strings.dart';
import '../../widgets/authentication/text_field_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String? _errorMsg;
  bool obscurePassword = true;
  IconData iconPassword = CupertinoIcons.eye_fill;
  bool signInRequired = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInBloc, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          setState(() {
            signInRequired = false;
          });
        } else if (state is SignInProcess) {
          setState(() {
            signInRequired = true;
          });
        } else if (state is SignInFailure) {
          setState(() {
            signInRequired = false;
            _errorMsg = 'Invalid email or password';
          });
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // const SizedBox(
              //   height: 50,
              // ),
              //Container(width: 350, height: 300),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    // const Text(
                    //   'Đăng nhập',
                    //   style: TextStyle(
                    //     fontWeight: FontWeight.bold,
                    //     fontSize: 40,
                    //   ),
                    // ),
                    //const SizedBox(height: 30),
                    Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            // const SizedBox(
                            //   height: 20,
                            // ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: TextFieldWidget(
                                  controller: emailController,
                                  hintText: 'Email',
                                  obscureText: false,
                                  keyboardType: TextInputType.emailAddress,
                                  prefixIcon:
                                      const Icon(CupertinoIcons.mail_solid),
                                  errorMsg: _errorMsg,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return 'Please fill in this fiald';
                                    } else if (!emailRexExp.hasMatch(val)) {
                                      return 'Please enter a valid email';
                                    }
                                    return null;
                                  }),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: TextFieldWidget(
                                controller: passwordController,
                                hintText: 'Password',
                                obscureText: obscurePassword,
                                keyboardType: TextInputType.visiblePassword,
                                prefixIcon:
                                    const Icon(CupertinoIcons.lock_fill),
                                errorMsg: _errorMsg,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Please fill in this fiald';
                                  } else if (!passwordRexExp.hasMatch(val)) {
                                    return 'Please enter a valid password';
                                  }
                                  return null;
                                },
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      obscurePassword = !obscurePassword;
                                      if (obscurePassword) {
                                        iconPassword = CupertinoIcons.eye_fill;
                                      } else {
                                        iconPassword =
                                            CupertinoIcons.eye_slash_fill;
                                      }
                                    });
                                  },
                                  icon: Icon(iconPassword),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const SizedBox(height: 20),
                            !signInRequired
                                ? MyButtonWidget(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        context.read<SignInBloc>().add(
                                            SignInRequired(emailController.text,
                                                passwordController.text));
                                      }
                                    },
                                    textButton: 'Đăng nhập')
                                : CircularProgressIndicator()
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
