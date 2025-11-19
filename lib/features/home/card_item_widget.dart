import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ifinance/core/style/app_colors.dart';
import 'package:ifinance/core/style/spacers.dart';

import '../../core/style/app_style.dart';

class CardItemWidget extends StatelessWidget {
  final int cardBalance;
  final String? cardNumber;
  final DateTime? cardExpiryDate;
  final String? cardName;

  const CardItemWidget({
    super.key,
    required this.cardBalance,
    required this.cardNumber,
    required this.cardExpiryDate,
    required this.cardName,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 207.w,
          height: 263.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: AppColors.primaryColor,
          ),
        ),
        Positioned(
          bottom: -20.h,
          left: -20.w,
          child: Container(
            width: 153.w,
            height: 153.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.1),
            ),
          ),
        ),
        Positioned(
          bottom: -85.h,
          left: -85.w,
          child: Container(
            width: 277.w,
            height: 277.h,

            decoration: BoxDecoration(
              shape: BoxShape.circle,

              color: Colors.white.withOpacity(0.1),
            ),
          ),
        ),

        Positioned(
          top: 24.h,
          left: 24.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //card name
              Text(
                cardName ?? "Not Available",
                style: AppStyles.black18BoldStyle.copyWith(
                  fontSize: 12.sp,
                  color: AppColors.whiteColor,
                ),
              ),
              HeightSpacer( 57),
              // balance text
              Text(
                "Balance",
                style: AppStyles.black18BoldStyle.copyWith(

                  color: AppColors.whiteColor.withOpacity(0.7),
                ),
              ),
              HeightSpacer( 10),
              Text(
                cardBalance.toString(),
                style: AppStyles.black18BoldStyle.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 26.h,
          right: 24.w,
          child: Text(
            cardExpiryDate != null
                ? '${cardExpiryDate!.month.toString().padLeft(2, '0')}/${cardExpiryDate!.year.toString().substring(2)}'
                : 'MM/YY',
            style: AppStyles.black18BoldStyle.copyWith(
              fontSize: 12.sp,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          bottom: 26.h,
          left: 24.w,
          child: Text(
            "****  ${cardNumber?.substring(12)}",
            style: AppStyles.black18BoldStyle.copyWith(
              fontSize: 12.sp,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
