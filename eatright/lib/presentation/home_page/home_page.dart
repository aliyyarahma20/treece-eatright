import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';
import 'widgets/litmain_course_item_widget.dart';
import 'widgets/listalad_one_item_widget.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(top: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 26.h,
                      right: 18.h,
                    ),
                    child: CustomSearchView(
                      controller: searchController,
                      hintText: "Search dishes, snack, etc.",
                      contentPadding:
                          EdgeInsets.fromLTRB(20.h, 14.h, 12.h, 14.h),
                    ),
                  ),
                  SizedBox(height: 14.h),
                  _buildRecommendedSection(context),
                  SizedBox(height: 14.h),
                  _buildCategoriesSection(context),
                  SizedBox(height: 18.h)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 76.h,
      title: Padding(
        padding: EdgeInsets.only(left: 27.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 10.h),
              child: Row(
                children: [
                  AppbarTitleImage(
                    imagePath: ImageConstant.imgFrame,
                  ),
                  AppbarSubtitleOne(
                    text: "GOOD MORNING".toUpperCase(),
                    margin: EdgeInsets.only(
                      left: 8.h,
                      top: 1.h,
                      bottom: 2.h,
                    ),
                  ),
                ],
              ),
            ),
            AppbarSubtitle(
              text: "Hello Nadal!",
            )
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgPlay,
          height: 40.h,
          width: 40.h,
          margin: EdgeInsets.only(right: 24.h),
        ),
      ],
      styleType: Style.bgFillPrimary,
    );
  }

  /// Section Widget
  Widget _buildRecommendedSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 26.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommended for you!",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 12.h),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                direction: Axis.horizontal,
                spacing: 22.h,
                children: List.generate(
                  2,
                  (index) {
                    return ListaladOneItemWidget();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoriesSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "Categories",
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                direction: Axis.horizontal,
                spacing: 22.h,
                children: List.generate(
                  3,
                  (index) {
                    return LitmainCourseItemWidget();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
