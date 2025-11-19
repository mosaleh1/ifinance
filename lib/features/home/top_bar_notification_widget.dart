import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/style/app_assets.dart';
import '../../core/style/app_style.dart';
import '../../core/style/spacers.dart';

class TopBarNotificationWidget extends StatelessWidget {
  const TopBarNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipOval(
              child: Image.asset(
                AppAssets.profile,
                width: 40.w,
                height: 40.h,
                fit: BoxFit.fill,
              ),
            ),
            WidthSpacer( 11),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome back", style: AppStyles.grey12MediumStyle),
                Text("Mohamed Saleh", style: AppStyles.black18BoldStyle),
              ],
            ),
          ],
        ),
        Container(
          width: 48.w,
          height: 48.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 1.0, color: Colors.grey.shade300),
          ),
          child: SvgPicture.asset(
            AppAssets.notifications,
            width: 24.w,
            height: 24.h,
          ),
        ),
      ],
    );
  }
}
