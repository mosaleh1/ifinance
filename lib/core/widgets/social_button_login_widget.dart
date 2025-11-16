import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
class SocialButtonLoginWidget extends StatelessWidget {
  // icon, onTap
  final String icon;
  final VoidCallback? onTap;
  const SocialButtonLoginWidget({super.key, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return                   InkWell(
                    onTap: onTap,
                    child: Container(
                      width: 105.w,
                      height: 56.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                          color: Color(
                            0xFFE8ECF4
                          ),
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: SvgPicture.asset(icon,
                        width: 12.w,
                        height: 24.h,
                        ),
                      ),
                    ),
                  );
  }
} 