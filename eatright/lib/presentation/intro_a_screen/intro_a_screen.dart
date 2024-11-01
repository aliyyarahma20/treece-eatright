// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';


class IntroAScreen extends StatelessWidget {
  const IntroAScreen({Key? key})
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
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      borderRadius: BorderRadiusStyle.roundedBorder40,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(left: 4.h),
                          padding: EdgeInsets.symmetric(horizontal: 28.h),
                          child: Column(
                            children: [
                              Container(
                                height: 364.h,
                                width: double.maxFinite,
                                margin: EdgeInsets.only(right: 2.h),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children:[
                                    Container(
                                      height: 270.h,
                                      width: 288.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.indigo300,
                                        borderRadius: BorderRadius.circular(
                                          144.h),
                                        ),
                                      ),
                                  ],
                                    CustomImageView(
                                      imagePath: 
                                          ImageConstant.imgTheMunchiesBowl,
                                      height: 364.h,
                                      width: 226.h,
                                    )
                                )
                              )
                            ],
                          ),
                        ),
                              SizedBox(height: 16.h),
                              SizedBox(
                                height: 12.h,
                                child: AnimatedSmoothIndicator(
                                  activeIndex: 0,
                                  count: 3,
                                  effect: ScrollingDotsEffect(
                                    spacing: 7.54,
                                    activeDotColor: appTheme.blueGray10001,
                                    dotColor: theme.colorScheme.primaryContainer.withOpacity(1),
                                    dotHeight: 12.h,
                                    dotWidth: 10.h,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ), 
                        SizedBox(height: 18.h),
                      ],
                    ),
                  ),
                  _buildLoginSection(context),
                  SizedBox(height: 6.h),
                ],
              ),
            ),
          ),
        );
      ),
    ),
  }    


  Widget _buildLoginSection(BuildContext context) {
    return Container(
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
          SizedBox(height: 40.h),
          Text(
            "Welcome to EatRight!",
            style: CustomTextStyles.headlineSmallRubik,
          ),
          SizedBox(height: 20.h),
          Text(
            "Your personalized food guide designed to help you manage allergies and health conditions. With tailored recommendations and easy tracking, ",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium!.copyWith(
              height: 1.50,
            ),
          ),
          SizedBox(height: 60.h),
          CustomElevatedButton(
            text: "Continue",
            buttonStyle: CustomButtonStyles.fillWhiteA,
            buttonTextStyle: CustomTextStyles.titleMediumPrimaryContainer,
          ),
        ],
      ),
    );
  }
}