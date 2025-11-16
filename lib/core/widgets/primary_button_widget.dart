import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final Function()? onPressed;
  final String? text;
  final Color? color;
  final double? bordersRadius;
  final double? width;
  final double? height;
  final Color? textColor;
  final double? fontSize;
  const PrimaryButtonWidget({super.key,
   this.onPressed, this.text, this.color,
    this.bordersRadius, this.width,
     this.height, this.textColor, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? Theme.of(context).primaryColor,
        fixedSize: Size(width ?? 331.w, height ?? 50.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(bordersRadius ?? 8.r),
        ),
      ),
      child: Text(
        text ?? "",
        style: TextStyle(color: textColor ?? Colors.white, fontSize: fontSize ?? 16.sp),
      ),
    );
  }
}