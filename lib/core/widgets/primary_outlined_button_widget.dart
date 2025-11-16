import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ifinance/core/style/app_colors.dart';

class PrimayOutlinedButtonWidget extends StatelessWidget {
  final String? text;
  final Color? bordersColor;
  final double? width;
  final double? height;
  final double? bordersRadius;
  final Color? textColor;
  final double? fontSize;
  final void Function()? onPressed;
  const PrimayOutlinedButtonWidget(
      {super.key,
      this.text,
      this.bordersColor,
      this.width,
      this.height,
      this.bordersRadius,
      this.fontSize,
      this.textColor,
      this. onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side:
            BorderSide(color: bordersColor ?? AppColors.primaryColor, width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(bordersRadius ?? 8.r),
        ),
        fixedSize: Size(width ?? 331.w, height ?? 56.h),
      ),
      child: Text(
        text ?? "",
        style: TextStyle(
            color: textColor ?? AppColors.primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: fontSize ?? 16.sp),
      ),
    );
  }
}
