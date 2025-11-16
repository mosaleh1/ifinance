import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ifinance/core/style/app_colors.dart';
import 'package:ifinance/core/style/spacers.dart';
import 'package:ifinance/core/widgets/primary_button_widget.dart';
import 'package:ifinance/core/widgets/primary_outlined_button_widget.dart';
import 'package:ifinance/routing/app_routers.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/onBoard1.png", fit: BoxFit.cover , width: double.infinity,),
          HeightSpacer(height: 40),
          PrimaryButtonWidget(
            text: "Login",
            onPressed: () {
              // Navigate to the next screen or perform an action
              context.push(AppRouter.loginRoute);
            },
          ),
          HeightSpacer(height: 15),
          PrimayOutlinedButtonWidget(
            text: "Sign Up",
            onPressed: () {
              // Navigate to the next screen or perform an action
              context.push(AppRouter.registrationRoute);
            },
          ),
          HeightSpacer(height: 15),
          Text( "Continue as Guest",

            style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 16,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}