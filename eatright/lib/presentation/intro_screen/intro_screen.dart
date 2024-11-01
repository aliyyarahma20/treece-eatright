import 'package:eatright/core/app_export.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(10.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildLogoSection(context), SizedBox(height: 44.h)],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLogoSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 18.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogoGame,
            height: 246.h,
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 14.h),
          ),
        ],
      ),
    );
  }
}
