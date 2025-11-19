import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ifinance/core/style/app_style.dart';
import 'package:ifinance/core/style/spacers.dart';
import 'package:ifinance/features/home/top_bar_notification_widget.dart';

import '../../core/style/app_assets.dart';
import 'Custom_Carousel_Widget.dart';
import 'home_page_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          HeightSpacer(18),
          TopBarNotificationWidget(),
          HeightSpacer(22),
          CustomCarouselWidget(),
          HeightSpacer(24),
          Expanded(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.sp,
                crossAxisSpacing: 16.sp,
              ),
              children: [
                CustomHomePageItem(
                  title: "Send Money",
                  description: "Send money to your friends with a click",
                  iconData: AppAssets.send_icon,
                ),
                CustomHomePageItem(
                  title: "Pay the bill",
                  description: "Lorem ipsum",
                  iconData: AppAssets.walletIconActive,
                ),
                CustomHomePageItem(
                  title: "Request",
                  description: "Lorem ipsum",
                  iconData: AppAssets.send_icon,
                ),
                CustomHomePageItem(
                  title: "Contact",
                  description: "Lorem ipsum",
                  iconData: AppAssets.user_group,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
