import 'package:flutter/material.dart';
import 'package:ifinance/core/style/app_style.dart';

class CustomOrLoginWidget extends StatelessWidget {
  const CustomOrLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Or login with",
                      style: AppStyles.grey12MediumStyle,
                    ),
                  );
  }
}