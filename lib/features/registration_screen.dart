import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ifinance/core/style/app_colors.dart';
import 'package:ifinance/core/style/app_fonts.dart';
import 'package:ifinance/core/style/spacers.dart';
import 'package:ifinance/core/widgets/back_button_widget.dart';
import 'package:ifinance/core/widgets/custom_or_login_widget.dart';
import 'package:ifinance/core/widgets/custom_text_field.dart';
import 'package:ifinance/core/widgets/primary_button_widget.dart';
import 'package:ifinance/core/widgets/social_login_icons_widget.dart';
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  HeightSpacer(height: 12,),
                  const BackButtonWidget(),
                  HeightSpacer(height: 32,),
                  SizedBox(
                  width: 280.w,
                  child: Text("Hello! Register to get started",
                  style:TextStyle(
                  fontFamily: AppFonts.fontFamilyUrbanist,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor)
                  ),
                ),
                HeightSpacer(height: 32,),
                CustomTextField(
                  hintText: "Enter Your UserName",
                ),
                HeightSpacer(height: 12,),
                CustomTextField(
                  hintText: "Enter Your Email",
                ),              
                HeightSpacer(height: 12,),
                CustomTextField(
                  hintText: "Enter Your Password",
                  isPassword: true,
                ),
                  HeightSpacer(height: 12,),
                  CustomTextField(
                    hintText: "Confirm Your Password",
                    isPassword: true,
                  ),
                  HeightSpacer(height: 24,),
                  PrimaryButtonWidget(
                    text: "Register",
                    onPressed: () {}, 
                  
                  ),
                    HeightSpacer(height: 35,),
                  CustomOrLoginWidget(),
                    HeightSpacer(height: 22,),
                  SocialLoginIconsWidget(),
                  HeightSpacer(height: 54,),
        
                  Center(
                    child: RichText(text: TextSpan(
                      text: "Already have an account? ",
                      style: TextStyle(
                        fontFamily: AppFonts.fontFamilyUrbanist,
                        fontSize: 14.sp,
                        color: AppColors.greyColor,
                      ),
                      children: [
                        TextSpan(
                          text: "Login",
                          style: TextStyle(
                            fontFamily: AppFonts.fontFamilyUrbanist,
                            fontSize: 14.sp,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),  
              ],
          ),
        ),
      )
      
    ));
  }
}