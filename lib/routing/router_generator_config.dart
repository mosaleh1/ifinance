import 'package:go_router/go_router.dart';
import 'package:ifinance/features/create_new_password_screen.dart';
import 'package:ifinance/features/forgot_password_screen.dart';
import 'package:ifinance/features/login_screen.dart';
import 'package:ifinance/features/main_screen.dart';
import 'package:ifinance/features/onboarding_screen.dart';
import 'package:ifinance/features/password_changed_successfully_screen.dart';
import 'package:ifinance/features/registration_screen.dart';
import 'package:ifinance/features/verify_opt/verify_opt_screen.dart';
import 'package:ifinance/routing/app_routers.dart';

class RouterGeneratorConfig {
  static GoRouter get router => GoRouter(
    initialLocation: AppRouter.mainScreen,
    routes: [
      GoRoute(
        path: AppRouter.onboardingRoute,
        name: AppRouter.onboardingRoute,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: AppRouter.loginRoute,
        name: AppRouter.loginRoute,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRouter.registrationRoute,
        name: AppRouter.registrationRoute,
        builder: (context, state) => const RegistrationScreen(),
      ),
      GoRoute(
        path: AppRouter.forgotPasswordRoute,
        name: AppRouter.forgotPasswordRoute,
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        path: AppRouter.createNewPasswordRoute,
        name: AppRouter.createNewPasswordRoute,
        builder: (context, state) => const CreateNewPasswordScreen(),
      ),
      GoRoute(
        path: AppRouter.passwordChangedSuccessfully,
        name: AppRouter.passwordChangedSuccessfully,
        builder: (context, state) => const PasswordChangedSuccessfullyScreen(),
      ),
      GoRoute(
        path: AppRouter.optScreen,
        name: AppRouter.optScreen,
        builder: (context, state) => const VerifyOtpScreen(),
      ),
      GoRoute(
        path: AppRouter.mainScreen,
        name: AppRouter.mainScreen,
        builder: (context, state) => const MainScreen(),
      ),
    ],
  );
}
