import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../models/register_screen_events.dart';
import '../models/register_screen_state.dart';

class RegisterScreenRoot extends StatefulWidget {
  const RegisterScreenRoot({
    required this.state,
    required this.onEvent,
    super.key
  });

  @override
  State<RegisterScreenRoot> createState() => _RegisterScreenRootState();
  final RegisterState state;
  final void Function(RegisterEvent) onEvent;
}

class _RegisterScreenRootState extends State<RegisterScreenRoot> {
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              width: MediaQuery.of(context).size.width,
              height:
              MediaQuery.of(context).size.height * 0.1966, // 167.29251 / 851
              AssetsData.backgroundRectanglePng,
              fit: BoxFit.cover, // fill width while keeping aspect ratio
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 19,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery
                            .of(context)
                            .size
                            .height * 0.0583,
                      ),
                      child: Center(
                        child: Container(
                          width:
                          MediaQuery
                              .of(context)
                              .size
                              .width *
                              0.413, // circle width
                          height:
                          MediaQuery
                              .of(context)
                              .size
                              .width *
                              0.413, // circle height
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0xFFFCF9FF),
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.0076,
                            ),
                            image: const DecorationImage(
                              image: AssetImage(AssetsData.signUpProfilePng),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      spacing: 23,
                      children: [
                        SizedBox(
                          height:  MediaQuery.of(context).size.height * 0.107,
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Color(0xFF4D306C),
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              height: 48/16,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          spacing: 24,
                          children: [
                            CustomTextField(
                              hint: 'Email',
                              onChange: (text) {
                                email = text;
                              },
                            ),
                            Row(
                              // spacing: 22,
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * (170.9 / 393),
                                  height: 56,
                                  child: CustomTextField(
                                    hint: 'First name',
                                    onChange: (text) {
                                      email = text;
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.056,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * (170.9 / 393),
                                  height: 56,
                                  child: CustomTextField(
                                    hint: 'Last name',
                                    onChange: (text) {
                                      email = text;
                                    },
                                  ),
                                ),
                              ],
                            ),
                            CustomTextField(
                              onChange: (text) {
                                password = text;
                              },
                              hint: 'Password',
                            ),
                            CustomTextField(
                              onChange: (text) {
                                password = text;
                              },
                              hint: 'Confirm password',
                            ),

                          ],
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                              Color(0xFFAD46FF),
                            ),
                            padding: const WidgetStatePropertyAll(
                              EdgeInsets.symmetric(vertical: 18),
                            ),
                            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 8,
                            children: [
                              Text(
                                'Next',
                                style: TextStyle(
                                  fontSize: 14,
                                  height: 20 / 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              Image.asset(
                                AssetsData.buttonIconPng,
                                width: 16,
                                height: 16,
                              ),
                            ],
                          ),
                        ),

                        //--OR--
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 8,
                          children: [
                            Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.356,
                              height: 1,
                              color: const Color(0xA36B4B8E),
                            ),
                            Text(
                              'OR',
                              style: const TextStyle(
                                fontSize: 16,
                                height: 24 / 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                color: Color(0xA36B4B8E),
                              ),
                            ),
                            Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.356,
                              height: 1,
                              color: const Color(0xA36B4B8E),
                            ),
                          ],
                        ),
                        // Sign Up
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 8,
                          children: [
                            Text(
                              'Do you have an account ?!',
                              style: const TextStyle(
                                fontSize: 16,
                                height: 24 / 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF311B4A),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                GoRouter.of(context).push(AppRouter.kLoginScreen);
                              },
                              child: Text(
                                'Sign In',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 16,
                                  height: 24 / 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF8C6BB0),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
