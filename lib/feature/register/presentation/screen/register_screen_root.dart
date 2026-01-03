import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/assets.dart';
import '../components/ORComponent.dart';
import '../components/SignUpButtonComponent.dart';
import '../components/UserInfoComponent.dart';
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
                        UserInfoComponent(),
                        SignUpButtonComponent(),

                        //--OR--
                        ORComponent(),
                        // Sign in
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



