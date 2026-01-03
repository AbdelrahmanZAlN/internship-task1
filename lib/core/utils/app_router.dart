import 'package:go_router/go_router.dart';
import 'package:internship_task_one/feature/register/presentation/view_model/register_view_model.dart';
import '../../feature/login/presentation/screen/login_screen.dart';
import '../../feature/login/presentation/view_model/login_view_model.dart';
import '../../feature/onboarding/onboarding_view.dart';
import '../../feature/register/presentation/screen/register_screen.dart';
import '../../feature/splash/presentation/splash_screen.dart';

abstract class AppRouter {
  static const kLoginScreen = '/loginScreen';
  static const kRegisterScreen = '/registerScreen';
  static const kSplashScreen = '/splashScreen';
  static const kOnboardingScreen = '/onboardingScreen';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: kOnboardingScreen,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: kLoginScreen,
        builder: (context, state) => LoginScreen(
            viewModel: () => LoginViewModel()),
      ),
      GoRoute(
        path: kRegisterScreen,
        builder: (context, state) => RegisterScreen(
          viewModel: () => RegisterViewModel()
        ),
      ),
    ],
  );
}