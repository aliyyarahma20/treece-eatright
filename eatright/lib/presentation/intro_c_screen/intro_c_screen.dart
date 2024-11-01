import 'package:eatright/core/app_export.dart';
import 'package:eatright/presentation/intro_b_screen/intro_b_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:eatright/theme/custom_button_style.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.secondaryContainer.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 20.h,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      borderRadius: BorderRadiusStyle.roundedBorder40,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 52.h),
                        _buildWormiesFavouriteSection(context),
                        SizedBox(height: 2.h),
                        _buildEnergizeTransformSection(context),
                        SizedBox(height: 12.h)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWormiesFavouriteSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgWormiesFavourite,
            height: 234.h,
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 4.h),
          ),
          SizedBox(height: 74.h),
          SizedBox(
            height: 12.h,
            child: AnimatedSmoothIndicator(
              activeIndex: 0,
              count: 3,
              effect: ScrollingDotsEffect(
                spacing: 7.54,
                activeDotColor: appTheme.blueGray100,
                dotColor: theme.colorScheme.primaryContainer.withOpacity(1),
                dotHeight: 12.h,
                dotWidth: 10.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEnergizeTransformSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 14.h,
        right: 10.h,
      ),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 4.h),
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 36.h,
            ),
            decoration: BoxDecoration(
              color: appTheme.blueGray900,
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 34.h),
                Text(
                  "Energize And Transform",
                  style: CustomTextStyles.headlineSmallRubik,
                ),
                SizedBox(height: 30.h),
                Text(
                  "Relish Intelligent, Gratifying, Healthy Treats.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleMediumOnPrimary.copyWith(
                    height: 1.50,
                  ),
                ),
                SizedBox(height: 64.h),
                CustomElevatedButton(
                  text: "Continue",
                  buttonStyle: CustomButtonStyles.fillWhiteA,
                  buttonTextStyle: CustomTextStyles.titleMediumPrimaryContainer,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
