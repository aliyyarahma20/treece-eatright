import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class BeginnersguidelistItemWidget extends StatelessWidget {
  const BeginnersguidelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.zero,
      color: theme.colorScheme.secondaryContainer.withOpacity(1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Container(
        height: 186.h,
        decoration: BoxDecoration(
          color: theme.colorScheme.secondaryContainer.withOpacity(1),
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgUnsplashSzj08qSi44,
              height: 184.h,
              width: double.maxFinite,
              radius: BorderRadius.circular(
                20.h,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 18.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgStar1,
                            height: 20.h,
                            width: 20.h,
                            radius: BorderRadius.circular(
                              1.h,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text(
                              "4.5",
                              style: CustomTextStyles.titleMediumSen,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 96.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: ImageFiltered(
                        imageFilter: ImageFilter.blur(
                          sigmaX: 2.0,
                          sigmaY: 2.0,
                        ),
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.zero,
                          color: theme.colorScheme.primaryContainer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder20,
                          ),
                          child: Container(
                            height: 62.h,
                            width: double.maxFinite,
                            padding: EdgeInsets.only(
                              left: 16.h,
                              bottom: 16.h,
                            ),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primaryContainer,
                              borderRadius: BorderRadiusStyle.roundedBorder20,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Text(
                                  "Beginners guide to healthy eating",
                                  style: CustomTextStyles.titleMediumSen,
                                ),
                                Text(
                                  "Beginners guide to healthy eating",
                                  style: CustomTextStyles.titleMediumSen,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
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
}
