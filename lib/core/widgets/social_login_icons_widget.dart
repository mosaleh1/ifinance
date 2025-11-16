import 'package:flutter/material.dart';
import 'package:ifinance/core/style/app_assets.dart';
import 'package:ifinance/core/widgets/social_button_login_widget.dart';

class SocialLoginIconsWidget extends StatelessWidget {
  const SocialLoginIconsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  SocialButtonLoginWidget(icon: AppAssets.facebookIcon, onTap: () {
                    // Handle Facebook login
                  },),

                  SocialButtonLoginWidget(icon: AppAssets.googleIcon, onTap: () {
                    // Handle Google login
                  },),
                  SocialButtonLoginWidget(icon: AppAssets.appleIcon, onTap: () {
                    // Handle Apple login
                  },),                
                ],
              );
  }
}