import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ifinance/core/style/spacers.dart';
import 'package:ifinance/features/home/card_item_widget.dart';

class CustomCarouselWidget extends StatefulWidget {
  const CustomCarouselWidget({super.key});

  @override
  State<CustomCarouselWidget> createState() => _CustomCarouselWidgetState();
}

class _CustomCarouselWidgetState extends State<CustomCarouselWidget> {
  int _currentIndexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 263.h,
            padEnds: false,
            viewportFraction: 0.65,
            enableInfiniteScroll: true,
            enlargeCenterPage: true,
            enlargeFactor: 0.15,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndexPage = index;
              });
            },
          ),

          items: [
            CardItemWidget(
              cardBalance: 2500,
              cardNumber: '**** **** **** 1234',
              cardExpiryDate: DateTime(2025, 12),
              cardName: 'Mohamed Saleh',
            ),
            CardItemWidget(
              cardBalance: 4200,
              cardNumber: '**** **** **** 5678',
              cardExpiryDate: DateTime(2028, 11),
              cardName: 'Jane Smith',
            ),
            CardItemWidget(
              cardBalance: 62200,
              cardNumber: '**** **** **** 5678',
              cardExpiryDate: DateTime(2028, 11),
              cardName: 'Jane Smith',
            ),
          ],
        ),
        const HeightSpacer(16),
        DotsIndicator(
          dotsCount: 3,
          position: _currentIndexPage.toDouble(),
          decorator: DotsDecorator(
            spacing: EdgeInsets.symmetric(horizontal: 4),
            color: Color(0xffE3E9ED),
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ],
    );
  }
}
