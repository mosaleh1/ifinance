import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ifinance/core/style/app_colors.dart';
import 'package:ifinance/core/style/app_style.dart';
import 'package:ifinance/core/style/spacers.dart';
import 'package:ifinance/core/widgets/primary_button_widget.dart';
import 'package:ifinance/routing/app_routers.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController pinCodeController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pinCodeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeightSpacer(height: 12),
                const BackButton(),
                const HeightSpacer(height: 28),
                SizedBox(
                  width: 280.w,
                  child: Text(
                    "OTP Verification",
                    style: AppStyles.primaryHeadLinesStyle,
                  ),
                ),
                const HeightSpacer(height: 10),
                Text(
                  "Enter the verification code we just sent on your email address.",
                  style: AppStyles.subtitlesStyles,
                ),
                const HeightSpacer(height: 32),
                PinCodeTextField(
                  appContext: context,
                  length: 4,
                  controller: pinCodeController,
                  obscureText: false,
                  enableActiveFill: true,
                  keyboardType: TextInputType.number,
                  textStyle:
                      AppStyles.primaryHeadLinesStyle.copyWith(fontSize: 22.sp),
                  pinTheme: PinTheme(
                    fieldWidth: 70.w,
                    fieldHeight: 60.h,
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8.r),
                    selectedColor: AppColors.primaryColor,
                    selectedFillColor: AppColors.whiteColor,
                    activeColor: AppColors.primaryColor,
                    activeFillColor: AppColors.whiteColor,
                    inactiveColor: AppColors.greyColor,
                    inactiveFillColor: AppColors.greyColor.withOpacity(0.1),
                    borderWidth: 1,
                  ),
                  onChanged: (value) {
                    print("pin value:$value");
                  },
                  onCompleted: (value) {
                    GoRouter.of(context).pushNamed(AppRouter.loginRoute);
                  },
                ),
                const HeightSpacer(height: 38),
                PrimaryButtonWidget(
                  text: "Verify",
                  onPressed: () {},
                ),
                const Spacer(),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Didn’t received code? ",
                      style: AppStyles.black15BoldStyle
                          .copyWith(color: AppColors.primaryColor),
                      children: [
                        TextSpan(
                            text: "Resend", style: AppStyles.black15BoldStyle)
                      ],
                    ),
                  ),
                ),
                const HeightSpacer(height: 26.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
