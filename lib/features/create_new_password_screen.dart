import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ifinance/core/style/app_colors.dart';
import 'package:ifinance/core/style/app_fonts.dart';
import 'package:ifinance/core/style/spacers.dart';
import 'package:ifinance/core/widgets/back_button_widget.dart';
import 'package:ifinance/core/widgets/custom_text_field.dart';
import 'package:ifinance/core/widgets/primary_button_widget.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  State<CreateNewPasswordScreen> createState() => _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  Widget build(BuildContext context) {
    return SafeArea(child:  Scaffold(
      body: Padding(padding:  const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeightSpacer(height: 12,),
                    const BackButtonWidget(),
                    HeightSpacer(height: 32,),
                    SizedBox(
                    width: 280.w,
                    child: Text("Create New Password",
                    style:TextStyle(
                    fontFamily: AppFonts.fontFamilyUrbanist,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor)
                    ),
                  ),
                  HeightSpacer(height: 10,),
                  Text( "Your new password must be different from previous used passwords.",
                    style:TextStyle(
                    fontFamily: AppFonts.fontFamilyUrbanist,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.greyColor)
                    ),
                  HeightSpacer(height: 32,),
                  //todo pass controller
                  CustomTextField(
                    hintText: "New Password",
                  ),
                  HeightSpacer(height: 15,),
                  CustomTextField(
                    hintText: "Confirm New Password",
                  ),
                  HeightSpacer(height: 38,),
                  PrimaryButtonWidget(
                    text: "Rest Password",
                    onPressed: () {
                      // todo navigate to Success Screen //temporary//
                      //context.push(AppRouter.otpSuccessRoute);
                    }, 
                  ),
                  
          ],
        ),
      ),
    )
    ));
  }
}