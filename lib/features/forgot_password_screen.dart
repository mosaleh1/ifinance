import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ifinance/core/style/app_colors.dart';
import 'package:ifinance/core/style/app_fonts.dart';
import 'package:ifinance/core/style/spacers.dart';
import 'package:ifinance/core/widgets/back_button_widget.dart';
import 'package:ifinance/core/widgets/custom_text_field.dart';
import 'package:ifinance/core/widgets/primary_button_widget.dart';
import 'package:ifinance/routing/app_routers.dart';
class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:  Scaffold(
      body: Padding(padding:  const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeightSpacer(12,),
                    const BackButtonWidget(),
                    HeightSpacer(32,),
                    SizedBox(
                    width: 280.w,
                    child: Text("Forgot Password?",
                    style:TextStyle(
                    fontFamily: AppFonts.fontFamilyUrbanist,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor)
                    ),
                  ),
                  HeightSpacer(32,),
                  //todo pass controller
                  CustomTextField(
                    hintText: "Enter Your Email",
                  ),
                  HeightSpacer(38,),
                  PrimaryButtonWidget(
                    text: "Send Code",
                    onPressed: () {
                      // todo navigate to Create New Password Screen //temporary//
                      context.push(AppRouter.createNewPasswordRoute);
                    }, 
                  ),
                  HeightSpacer(351,),
                  Center(
                    child: RichText(text: TextSpan(
                      text: "Remember your password? ",
                      style: TextStyle(
                        color: AppColors.greyColor,
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: "Login",
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                          //todo navigate to login screen
                        ),
                      ],
                    )),
                  ),
          ],
        ),
      ),
    )
    ));
  }
}