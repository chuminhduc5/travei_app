import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_application/blocs/sign_up_bloc/sign_up_bloc.dart';
import 'package:user_repository/user_repository.dart';

import '../../theme.dart';
import '../../widgets/authentication/button_widget.dart';
import '../../widgets/authentication/strings.dart';
import '../../widgets/authentication/text_field_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool obscurePassword = true;
  IconData iconPassword = CupertinoIcons.eye_fill;
  final nameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  bool signUpRequired = false;

  bool containsUpperCase = false;
  bool containsLowerCase = false;
  bool containsNumber = false;
  bool containsSpecialChar = false;
  bool contains8Length = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          setState(() {
            signUpRequired = false;
          });
        } else if (state is SignUpProcess) {
          setState(() {
            signUpRequired = true;
          });
        } else if (state is SignUpFailure) {
          return;
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Container(width: 350, height: 300),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    // const Text(
                    //   'Đăng Ky',
                    //   style: TextStyle(
                    //     fontWeight: FontWeight.bold,
                    //     fontSize: 40,
                    //   ),
                    // ),
                    const SizedBox(height: 30),
                    Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: TextFieldWidget(
                                  controller: nameController,
                                  hintText: 'Họ tên',
                                  obscureText: false,
                                  keyboardType: TextInputType.name,
                                  prefixIcon:
                                      const Icon(CupertinoIcons.person_fill),
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return 'Please fill in this field';
                                    } else if (val.length > 30) {
                                      return 'Name too long';
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
                                  controller: phoneNumberController,
                                  hintText: 'Số điện thoại',
                                  obscureText: false,
                                  keyboardType: TextInputType.phone,
                                  prefixIcon:
                                      const Icon(CupertinoIcons.phone_fill),
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return 'Please fill in this field';
                                    } else if (val.length > 30) {
                                      return 'Name too long';
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
                                  controller: emailController,
                                  hintText: 'Email',
                                  obscureText: false,
                                  keyboardType: TextInputType.emailAddress,
                                  prefixIcon:
                                      const Icon(CupertinoIcons.mail_solid),
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return 'Please fill in this field';
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
                                  onChanged: (val) {
                                    if (val!.contains(RegExp(r'[A-Z]'))) {
                                      setState(() {
                                        containsUpperCase = true;
                                      });
                                    } else {
                                      setState(() {
                                        containsUpperCase = false;
                                      });
                                    }
                                    if (val.contains(RegExp(r'[a-z]'))) {
                                      setState(() {
                                        containsLowerCase = true;
                                      });
                                    } else {
                                      setState(() {
                                        containsLowerCase = false;
                                      });
                                    }
                                    if (val.contains(RegExp(r'[0-9]'))) {
                                      setState(() {
                                        containsNumber = true;
                                      });
                                    } else {
                                      setState(() {
                                        containsNumber = false;
                                      });
                                    }
                                    if (val.contains(specialCharRexExp)) {
                                      setState(() {
                                        containsSpecialChar = true;
                                      });
                                    } else {
                                      setState(() {
                                        containsSpecialChar = false;
                                      });
                                    }
                                    if (val.length >= 8) {
                                      setState(() {
                                        contains8Length = true;
                                      });
                                    } else {
                                      setState(() {
                                        contains8Length = false;
                                      });
                                    }
                                    return null;
                                  },
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        obscurePassword = !obscurePassword;
                                        if (obscurePassword) {
                                          iconPassword =
                                              CupertinoIcons.eye_fill;
                                        } else {
                                          iconPassword =
                                              CupertinoIcons.eye_slash_fill;
                                        }
                                      });
                                    },
                                    icon: Icon(iconPassword),
                                  ),
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return 'Please fill in this field';
                                    } else if (!passwordRexExp.hasMatch(val)) {
                                      return 'Please enter a valid password';
                                    }
                                    return null;
                                  }),
                            ),
                            const SizedBox(height: 10),
                            RichText(
                              //softWrap: true,
                              //overflow: TextOverflow.clip,
                              text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '(Mật khẩu dài trên 8 kí tự, ',
                                      style: TextStyle(
                                          color: contains8Length
                                              ? Colors.green
                                              : Theme.of(context)
                                              .colorScheme
                                              .onBackground),
                                    ),
                                    TextSpan(
                                      text: 'viết hoa, ',
                                      style: TextStyle(
                                          color: containsUpperCase
                                              ? Colors.green
                                              : Theme.of(context)
                                              .colorScheme
                                              .onBackground),
                                    ),
                                    TextSpan(
                                      text: 'viết thường, ',
                                      style: TextStyle(
                                          color: containsLowerCase
                                              ? Colors.green
                                              : Theme.of(context)
                                              .colorScheme
                                              .onBackground),
                                    ),
                                    TextSpan(
                                      text: 'số, ',
                                      style: TextStyle(
                                          color: containsNumber
                                              ? Colors.green
                                              : Theme.of(context)
                                              .colorScheme
                                              .onBackground),
                                    ),
                                    TextSpan(
                                      text: 'kí tự đặc biệt)',
                                      style: TextStyle(
                                          color: containsSpecialChar
                                              ? Colors.green
                                              : Theme.of(context)
                                              .colorScheme
                                              .onBackground),
                                    ),
                                  ]
                              ),
                            ),
                            const SizedBox(height: 10),
                            const SizedBox(height: 10),
                            !signUpRequired
                                ? MyButtonWidget(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        MyUser myUser = MyUser.empty;
                                        myUser = myUser.copyWith(
                                            email: emailController.text,
                                            name: nameController.text);

                                        setState(() {
                                          context.read<SignUpBloc>().add(
                                              SignUpRequired(myUser,
                                                  passwordController.text));
                                        });
                                      }
                                    },
                                    textButton: 'Đăng Ký')
                                : const CircularProgressIndicator()
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
