import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ifinance/core/style/app_assets.dart';
import 'package:ifinance/core/style/app_style.dart';
import 'package:ifinance/core/style/spacers.dart';
import 'package:ifinance/core/widgets/primary_button_widget.dart';
import 'package:ifinance/routing/app_routers.dart';

class PasswordChangedSuccessfullyScreen extends StatelessWidget {
  const PasswordChangedSuccessfullyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeightSpacer(height: 248,),
            Image.asset(AppAssets.successMark, width: 100, height: 100),
            HeightSpacer(height: 35,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Password Changed Successfully!",
                style: AppStyles.primaryHeadLinesStyle,
                textAlign: TextAlign.center,
              ),
            ),
            HeightSpacer(height: 8,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Your password has been changed successfully.",
                style: AppStyles.subtitlesStyles,
                textAlign: TextAlign.center,
              ),
            ),
            HeightSpacer(height: 40,),
            Center(
              child: PrimaryButtonWidget(
                text: "Back to Login",
                onPressed: () {
                  context.go(AppRouter.loginRoute);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
} 