import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ifinance/core/style/spacers.dart';

import '../../core/style/app_colors.dart';
import '../../core/style/app_style.dart';

class CustomHomePageItem extends StatelessWidget {
  final String iconData;
  final String title;
  final String description;

  const CustomHomePageItem({
    super.key,
    required this.iconData,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffE3E9ED), width: 1),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Center(
        child: Column(
          children: [
            Container(
              width: 48.w,
              height: 48.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xffECF1F6),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: SvgPicture.asset(
                iconData,
                width: 20.sp,
                height: 20.sp,
                color: AppColors.primaryColor,
              ),
            ),
            const HeightSpacer(12),
            Text(title, style: AppStyles.black15BoldStyle),
            const HeightSpacer(8),
            Text(
              description,
              style: AppStyles.grey12MediumStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
