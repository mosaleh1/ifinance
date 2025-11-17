import 'package:flutter/material.dart';

class WidthSpacer extends StatelessWidget {
  final double? width;
  const WidthSpacer({this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width ?? 20,);
  }
}

class HeightSpacer extends StatelessWidget {
  final double? height;
  const HeightSpacer({this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height ?? 20,);
  }
}