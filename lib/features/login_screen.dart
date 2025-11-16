import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ifinance/core/style/app_colors.dart';
import 'package:ifinance/core/style/app_fonts.dart';
import 'package:ifinance/core/style/app_style.dart';
import 'package:ifinance/core/style/spacers.dart';
import 'package:ifinance/core/widgets/back_button_widget.dart';
import 'package:ifinance/core/widgets/custom_or_login_widget.dart';
import 'package:ifinance/core/widgets/custom_text_field.dart';
import 'package:ifinance/core/widgets/primary_button_widget.dart';
import 'package:ifinance/core/widgets/primary_outlined_button_widget.dart';
import 'package:ifinance/core/widgets/social_login_icons_widget.dart';
import 'package:ifinance/routing/app_routers.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();

}
class _LoginScreenState extends State<LoginScreen> {
    final formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;
  
  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeightSpacer(height: 20),
              BackButtonWidget(),
              HeightSpacer(height: 28),
              SizedBox(
                width: 280.w,
                child: Text("Welcome back Again!",
                style:TextStyle(
                fontFamily: AppFonts.fontFamilyUrbanist,
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor)
                ),
              ),
              HeightSpacer(height: 32),
              const CustomTextField(
                hintText: "Enter Your Email",
              ),
              HeightSpacer(height: 15,),
              const CustomTextField(
                hintText: "Enter Your Password",
                isPassword: true,
              ),
              HeightSpacer(height: 10,),
              InkWell(
                onTap: () {
                  // Handle forgot password tap
                  context.push(AppRouter.forgotPasswordRoute);
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text("Forgot Password?",
                  style: AppStyles.black16w500Style,
                  ),
                ),
              ),
              HeightSpacer(height: 30,),
              PrimaryButtonWidget(
                text: "Login",
                onPressed: () {},
              )
              ,
              HeightSpacer(height: 20,),
              PrimayOutlinedButtonWidget(
                text: "Sign Up",
                onPressed: () {},
              ),
              HeightSpacer(height: 35,),
              const CustomOrLoginWidget(),
                  
              HeightSpacer(height: 30),
              SocialLoginIconsWidget(),
              HeightSpacer(height: 100),
              
              Center(
                child: RichText(text: TextSpan(text: "Don’t have an account? ", 
              
              children: [
                TextSpan(text: "Sign Up", style: TextStyle(color: AppColors.primaryColor),)],
              style: AppStyles.black15BoldStyle,)),
              )
              ],
          ),
        )
      )
    );
  }
}