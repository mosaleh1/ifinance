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
            HeightSpacer(12,),
                    const BackButtonWidget(),
                    HeightSpacer(32,),
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
                  HeightSpacer(10,),
                  Text( "Your new password must be different from previous used passwords.",
                    style:TextStyle(
                    fontFamily: AppFonts.fontFamilyUrbanist,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.greyColor)
                    ),
                  HeightSpacer(32,),
                  //todo pass controller
                  CustomTextField(
                    hintText: "New Password",
                  ),
                  HeightSpacer(15,),
                  CustomTextField(
                    hintText: "Confirm New Password",
                  ),
                  HeightSpacer(38,),
                  PrimaryButtonWidget(
                    text: "Rest Password",
                    onPressed: () {
                      // todo navigate to Success Screen //temporary//
                      context.push(AppRouter.passwordChangedSuccessfully);
                    }, 
                  ),
                  
          ],
        ),
      ),
    )
    ));
  }
}