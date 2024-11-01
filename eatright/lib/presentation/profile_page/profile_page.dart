import 'package:eatright/core/app_export.dart';
import 'package:eatright/widgets/appbar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:eatright/lib/widgets/appbar/appbar_leading_iconbutton.dart';
import './../widgets/app_bar/custom_app_bar.dart'; // ignore_for_file: must_be_immutable

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.img23Profile,
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(top: 56.0),
            padding: EdgeInsets.only(
              left: 16.0,
              top: 60.0,
              right: 16.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgMaskGroup,
                            height: 96.0,
                            width: 96.0,
                            radius: BorderRadius.circular(
                              48.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 14.0),
                      Text(
                        "Nada",
                        style: CustomTextStyles.headlineSmallRubikBluegray900,
                      ),
                      SizedBox(height: 2.0),
                      Text(
                        "EatRightxxxx@gmail.com",
                        style: CustomTextStyles.labelLargeRubikBluegray900,
                      ),
                      SizedBox(height: 40.0),
                      _buildProfileContent(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 68.0,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgClock,
        height: 44.0,
        width: 44.0,
        margin: const EdgeInsets.only(left: 24.0),
      ),
    );
  }

  /// Widget Section
  Widget _buildProfileContent(BuildContext context) {
    return Container(
      height: 254.0,
      width: double.maxFinite,
      margin: const EdgeInsets.only(left: 8.0),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 202.0,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 24.0,
                      margin: const EdgeInsets.only(
                        top: 14.0,
                        right: 10.0,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 24.0,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: appTheme.gray30019,
                                width: 1.0,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgArrowLeftBlueGray900,
                                  height: 10.0,
                                  width: 6.0,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30.0),
                          Container(
                            height: 24.0,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: appTheme.gray30019,
                                width: 1.0,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgArrowLeftBlueGray900,
                                  height: 10.0,
                                  width: 6.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 6.0),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onErrorContainer,
                      border: Border(
                        top: BorderSide(
                          color: appTheme.gray30019,
                          width: 1.0,
                        ),
                        bottom: BorderSide(
                          color: appTheme.gray30019,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(
                            left: 16.0,
                            right: 10.0,
                          ),
                          child: Row(
                          mainAxisSize: MainAxisSize.spaceBetween,
                          children: [
                            Text(
                              "Health Details",
                              style: CustomTextStyles.titleLargeSenPrimary,
                            ),
                            Container(
                              height: 24.h,
                              width: 24.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: appTheme.gray30019,
                                  width: 1.h,
                                ),
                              ),
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  CustomImageView(
                                    imagePath: 
                                        ImageConstant.imgArrowLeftBlueGray900,
                                    height: 10.h,
                                    width: 6.h,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        SizedBox(
                          width: double.maxFinite,
                          child: Column(
                            children: [
                              SizedBox(
                                width: double.maxFinite,
                                child: Divider(
                                  color: appTheme.whiteA700,
                                ),
                              ),
                              SizedBox(height: 2.h),
                              Container(
                                width: double.maxFinite,
                                margin: EdgeInsets.only(
                                  left: 16.h,
                                  right: 8.h,
                                ),
                                child: Row(
                                  mainAxisAlignment: 
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Settings",
                                      style: 
                                          CustomTextStyles.titleLargeSenPrimary,
                                    ),
                                    Container(
                                      height: 24.h,
                                      width: 24.h,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: appTheme.gray30019,
                                          width: 1.h,
                                        ),
                                      ),
                                      child: Stack(
                                        alignment: Alignment.centerRight,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgArrowLeftBlueGray900,
                                            height: 10.h,
                                            width: 6.h,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(
                            left: 16.h,
                            right: 10.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Reminders",
                                style: CustomTextStyles.titleLargeSenPrimary,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 24.h,
                                  width: 24.h,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: appTheme.gray30019,
                                      width: 1.h,
                                    ),
                                  ),
                                  child: Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgArrowLeftBlueGray900,
                                        height: 10.h,
                                        width: 6.h,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(
                            left: 16.h,
                            right: 10.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Help",
                                style: CustomTextStyles.titleLargeSenPrimary,
                              ),
                              Container(
                                height: 24.h,
                                width: 24.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: appTheme.gray30019,
                                    width: 1.h,
                                  ),
                                ),
                                child: Stack(
                                  alignment: Alignment.centerRight,
                                  children: [
                                    CustomImageView(
                                        imagePath: 
                                          ImageConstant.imgArrowLeftBlueGray900,
                                        height: 10.h,
                                        width: 6.h,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text(
                              "Logout",
                              style: 
                                  CustomTextStyles.titleLargeSenDeepOrangeA700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(child: 
          height: 170.h,
          width: 330.h,
          )
        ],
      ),
    );
  }
}
