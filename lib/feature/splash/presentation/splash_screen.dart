import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/utils/app_router.dart';
import '../../../core/utils/assets.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AssetsData.logoPng,
          width: 250,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
          () {
        GoRouter.of(context).push(AppRouter.kOnboardingScreen);
      },
    );
  }

}