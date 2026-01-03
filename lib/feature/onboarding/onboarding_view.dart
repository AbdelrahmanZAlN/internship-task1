import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../constants.dart';
import '../../core/utils/app_router.dart';
import '../../core/utils/assets.dart';
import 'first_tab.dart';
import 'second_tab.dart';
import 'third_tab.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final pageController = PageController();
  var isLast = false;
  final List<Widget> pageTabs = [
    const FirstTab(),
    const SecondTab(),
    const ThirdTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FB),
      // Light background to make white cards pop
      body: Stack(
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(top: 60, left: 25, right: 25, bottom: 240),
          //   child: PageView.builder(
          //     // ... your existing PageView logic
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(
              top: 42,
              left: 0,
              right: 0,
              bottom: 0,
            ),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    itemBuilder: (context, index) {
                      if (index == pageTabs.length - 1) {
                        isLast = true;
                      } else {
                        isLast = false;
                      }
                      return pageTabs[index];
                    },
                    controller: pageController,
                    itemCount: pageTabs.length,
                  ),
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.07),

                // Container(
                //   width: MediaQuery.of(context).size.width * (345.27609 / 393), // responsive
                //   // height: 176.15,
                //   padding: const EdgeInsets.fromLTRB(
                //     25.1,
                //     25.1,
                //     25.1,
                //     13.1,
                //   ),
                //   decoration: BoxDecoration(
                //     color: const Color(0xCCFFFFFF),
                //     borderRadius: BorderRadius.circular(24),
                //     border: Border.all(
                //       width: 1.11,
                //       color: const Color(0x80FFFFFF),
                //     ),
                //     boxShadow: const [
                //       BoxShadow(
                //         color: Color(0x30000000),
                //         blurRadius: 20,
                //         spreadRadius: 0,
                //       ),
                //     ],
                //   ),
                //   child : Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     // mainAxisAlignment: MainAxisAlignment.center,
                //     spacing: 24,
                //     children: [
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           SmoothPageIndicator(
                //               effect: const ExpandingDotsEffect(
                //                 dotWidth: 12,
                //                 dotHeight: 12,
                //                 spacing: 5,
                //                 expansionFactor: 4,
                //                 activeDotColor: Color(0xFFAD46FF),
                //                 dotColor: Color(0xFFE5E0EB),
                //
                //               ),
                //               controller: pageController,
                //               count: pageTabs.length),
                //         ],
                //       ),
                //       ElevatedButton(
                //         style: ButtonStyle(
                //           backgroundColor: WidgetStateProperty.all(
                //             Color(0xFFAD46FF),
                //           ),
                //           padding: const WidgetStatePropertyAll(
                //             EdgeInsets.symmetric(vertical: 18),
                //           ),
                //           shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                //             RoundedRectangleBorder(
                //               borderRadius: BorderRadius.circular(16),
                //             ),
                //           ),
                //         ),
                //         onPressed: () {},
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           spacing: 8,
                //           children: [
                //             Text(
                //               'Get Started',
                //               style: TextStyle(
                //                 fontSize: 14,
                //                 height: 20 / 14,
                //                 fontWeight: FontWeight.w400,
                //                 color: Colors.white,
                //               ),
                //             ),
                //             Image.asset(
                //               AssetsData.buttonIconPng,
                //               width: 16,
                //               height: 16,
                //             ),
                //           ],
                //         ),
                //       ),
                //       GestureDetector(
                //         onTap: () {
                //           GoRouter.of(context).push(AppRouter.kLoginScreen);
                //         },
                //         child: Text(
                //           'Skip',
                //           textAlign: TextAlign.center,
                //           style: const TextStyle(
                //             fontSize: 16,
                //             height: 24 / 16,
                //             fontFamily: 'Inter',
                //             fontWeight: FontWeight.w400,
                //             color: Color(0xFF6A7282),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
          // Floating Bottom Card
          Positioned(
            bottom: 30,
            left: 22,
            right: 22,
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 30,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                spacing: 24,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SmoothPageIndicator(
                        effect: const ExpandingDotsEffect(
                          dotWidth: 12,
                          dotHeight: 12,
                          spacing: 5,
                          expansionFactor: 4,
                          activeDotColor: Color(0xFFAD46FF),
                          dotColor: Color(0xFFE5E0EB),
                        ),
                        controller: pageController,
                        count: pageTabs.length,
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
                    onPressed: () {
                      if(isLast){
                        finishOnboarding(context);
                        return;
                      }
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.fastEaseInToSlowEaseOut,
                      );
                    },
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
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kLoginScreen);
                    },
                    child: Text(
                      'Skip',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        height: 24 / 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF6A7282),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    /*
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 42,left: 22,right: 22,bottom: 22),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemBuilder: (context, index){
                  if(index==pageTabs.length-1){
                    isLast=true;
                  }
                  else{
                    isLast=false;
                  }
                  return pageTabs[index];
                },
                controller: pageController,
                itemCount: pageTabs.length,

              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.07,),

            Container(
              width: MediaQuery.of(context).size.width * (345.27609 / 393), // responsive
              // height: 176.15,
              padding: const EdgeInsets.fromLTRB(
                25.1,
                25.1,
                25.1,
                13.1,
              ),
              decoration: BoxDecoration(
                color: const Color(0xCCFFFFFF),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  width: 1.11,
                  color: const Color(0x80FFFFFF),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x30000000),
                    blurRadius: 20,
                    spreadRadius: 0,
                  ),
                ],
              ),
                child : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 24,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SmoothPageIndicator(
                            effect: const ExpandingDotsEffect(
                              dotWidth: 12,
                              dotHeight: 12,
                              spacing: 5,
                              expansionFactor: 4,
                              activeDotColor: Color(0xFFAD46FF),
                              dotColor: Color(0xFFE5E0EB),

                            ),
                            controller: pageController,
                            count: pageTabs.length),
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
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.kLoginScreen);
                      },
                      child: Text(
                        'Skip',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          height: 24 / 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF6A7282),
                        ),
                      ),
                    ),
                  ],
                ),
            ),

          ],
        ),
      ),
    );*/
  }

  void finishOnboarding(BuildContext context) async {
    // bool isOnboarding = false;
    // await CacheHelper.saveData(key: "isOnboarding", value: isOnboarding);

    //if (!context.mounted) return; // Ensure context is still valid

    // Navigator.pushReplacementNamed(context, LoginView.routeName);

    GoRouter.of(context).push(AppRouter.kLoginScreen);
  }
}
