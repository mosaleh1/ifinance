import 'package:go_router/go_router.dart';
import 'package:ifinance/features/login_screen.dart';
import 'package:ifinance/features/onboarding_screen.dart';
import 'package:ifinance/routing/app_routers.dart';

class RouterGeneratorConfig {
  static GoRouter get router => GoRouter(
        initialLocation: AppRouter.onboardingRoute,
        routes: [
          GoRoute(
            path: AppRouter.onboardingRoute,
            builder: (context, state) => const OnboardingScreen(),
          ),
          GoRoute(
            path: AppRouter.loginRoute,
            builder: (context, state) => const LoginScreen(),
          ),
        ],
      );
}