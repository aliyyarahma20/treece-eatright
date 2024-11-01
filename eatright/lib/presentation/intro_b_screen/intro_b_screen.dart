import 'package:eatright/core/app_export.dart';
import 'package:eatright/theme/custom_button_style.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHorizontalScrollSection(context),
                  SizedBox(height: 2.h),
                  _buildLoginAreaSection(context),
                  SizedBox(height: 12.h)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHorizontalScrollSection(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: Row(
          children: [
            Expanded(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 20.h,
                ),
                decoration: BoxDecoration(
                  color: appTheme.whiteA700,
                  borderRadius: BorderRadiusStyle.roundedBorder40,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 24.h),
                    CustomImageView(
                      imagePath: ImageConstant.imgTheMunchiesBowl280x354,
                      height: 280.h,
                      width: double.maxFinite,
                    ),
                    SizedBox(height: 56.h),
                    SizedBox(
                      height: 12.h,
                      child: AnimatedSmoothIndicator(
                        activeIndex: 0,
                        count: 3,
                        effect: ScrollingDotsEffect(
                          spacing: 7.54,
                          activeDotColor: appTheme.blueGray10001,
                          dotColor: appTheme.black90001,
                          dotHeight: 12.h,
                          dotWidth: 10.h,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgIcTwotoneNoFood,
                      height: 24.h,
                      width: 24.h,
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(bottom: 50.h),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginAreaSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 14.h,
        right: 10.h,
      ),
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 36.h,
            ),
            decoration: BoxDecoration(
              color: theme.colorScheme.secondaryContainer.withOpacity(1),
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 28.h),
                Text(
                  "Take Health Into Your\nOwn Hands",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineSmallRubik.copyWith(
                    height: 1.50,
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  "EatRight ensures you stay on top of your meals, avoiding potential triggers and keeping you on the path to better health.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.50,
                  ),
                ),
                SizedBox(height: 34.h),
                CustomElevatedButton(
                  text: "Continue",
                  buttonStyle: CustomButtonStyles.fillWhiteA,
                  buttonTextStyle: CustomTextStyles.titleMediumPrimaryContainer,
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

CustomElevatedButton(
    {required String text,
    required buttonStyle,
    required buttonTextStyle,
    required Null Function() onPressed,
    required EdgeInsets margin,
    required Container leftIcon}) {}
