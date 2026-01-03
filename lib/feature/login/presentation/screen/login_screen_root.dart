import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../models/login_screen_events.dart';
import '../models/login_screen_state.dart';

class LoginScreenRoot extends StatefulWidget {
  const LoginScreenRoot({
    required this.state,
    required this.onEvent,
    super.key,
  });

  @override
  State<LoginScreenRoot> createState() => _LoginScreenRootState();
  final LoginState state;
  final void Function(LoginEvent) onEvent;
}

//          onChanged: (v) => onEvent(EmailChanged(v)),
class _LoginScreenRootState extends State<LoginScreenRoot> {
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
                              image: AssetImage(AssetsData.profilePng),
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
                            "Sign In",
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
                            CustomTextField(
                              onChange: (text) {
                                password = text;
                              },
                              hint: 'Password',
                            ),
                            Text(
                              'Forgot Your Password ?!',
                              textAlign: TextAlign.right,
                              style: const TextStyle(
                                fontSize: 16,
                                // keep sp value
                                height: 24 / 16,
                                // 1.5
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                color: Color(0xA34D306C),
                              ),
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
                                'Get Started',
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
                        //Social media
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 32,
                          children: [
                            Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.102,
                              // 40.dp
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.102,
                              padding: EdgeInsets.all(
                                MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.0204, // 8.dp
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color(0xFFF5ECFF),
                                border: Border.all(
                                  width: 1,
                                  color: const Color(0xFF4D306C),
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x40000000),
                                    blurRadius: 8,
                                    spreadRadius: 0,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                AssetsData.socialGooglePng,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.102,
                              // 40.dp
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.102,
                              padding: EdgeInsets.all(
                                MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.0204, // 8.dp
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color(0xFFF5ECFF),
                                border: Border.all(
                                  width: 1,
                                  color: const Color(0xFF4D306C),
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x40000000),
                                    blurRadius: 8,
                                    spreadRadius: 0,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                AssetsData.twitterIconPng,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.102,
                              // 40.dp
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.102,
                              padding: EdgeInsets.all(
                                MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.0204, // 8.dp
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color(0xFFF5ECFF),
                                border: Border.all(
                                  width: 1,
                                  color: const Color(0xFF4D306C),
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x40000000),
                                    blurRadius: 8,
                                    spreadRadius: 0,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                AssetsData.facebookIconPng,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
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
                              'Not account ?!',
                              style: const TextStyle(
                                fontSize: 16,
                                height: 24 / 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF311B4A),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                GoRouter.of(context).push(AppRouter.kRegisterScreen);
                              },
                              child: Text(
                                'Create an account',
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
