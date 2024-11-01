import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import '../widgets/custom_elevated_button.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen(Key? key)
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildBackgroundStack(context),
              _buildFriedFriesScrollView(context)
            ],
          ),
        ),
        bottomNavigationBar: _buildCheckButtonColumn(context),
      ),
    );
  }

  /// Section Widget for Background Stack
  Widget _buildBackgroundStack(BuildContext context) {
    return SizedBox(
      height: 320.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImageBackground,
            height: 320.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              30.h,
            ),
          ),
          SizedBox(
            height: 320,
            h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgUnsplash5ybhgp0wreo,
                  height: 320.h,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(30.h),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: CustomAppBar(
                    height: 44.h,
                    leadingWidth: 68.h,
                    leading: AppbarLeadingIconbutton(
                      imagePath: ImageConstant.imgClock,
                      height: 44.h,
                      width: 44.h,
                      margin: const EdgeInsets.only(left: 24.h),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget for Fried Fries ScrollView
  Widget _buildFriedFriesScrollView(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 22.h),
              Text(
                "Fried Fries",
                style: CustomTextStyles.titleLargeSenGray900,
              ),
              const SizedBox(height: 10.h),
              Padding(
                padding: const EdgeInsets.only(left: 4.h),
                child: Text(
                  "Fried fries, commonly known as French fries, are a popular snack or side dish made from potatoes that are cut into various shapes.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumSenBluegray300.copyWith(
                    height: 1.71,
                  ),
                ),
              ),
              const SizedBox(height: 6.h),
              Text(
                "NUTRITIONAL VALUES (FOR 100 GRAMS):",
                style: CustomTextStyles.bodySmallSenBluegray90001,
              ),
              const SizedBox(height: 12.h),
              Padding(
                padding: const EdgeInsets.only(left: 8.h),
                child: Text(
                  "Calories: 312 kcal\nCarbohydrates: 41 grams\nFiber: 3.8 grams\nSugars: 0.4 grams",
                  maxLines: 12,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumSenBluegray300.copyWith(
                    height: 1.71,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget for Check Button
  Widget _buildCheckButtonColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 22.h,
      ),
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomElevatedButton(
            text: "Check",
          ),
        ],
      ),
    );
  }
}
