import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/app_bar/appbar_title_searchview_two.dart';
import 'widgets/listmain_course1_item_widget.dart';
import 'widgets/listsalad_one1_item_widget.dart';

class SearchAInitialPage extends StatefulWidget {
  const SearchAInitialPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchAInitialPageState createState() => SearchAInitialPageState();
}

// ignore for file: must be immutable
class SearchAInitialPageState extends State<SearchAInitialPage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: _buildAppBar(context),
          ),
          Expanded(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(top: 8.h),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildRecommendedSection(context),
                  SizedBox(height: 14.h),
                  _buildCategoriesSection(context)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: SizedBox(
        width: double.maxFinite,
        child: AppbarTitleSearchViewTwo(
          margin: EdgeInsets.only(
            left: 17.h,
            right: 13.h,
          ),
          hintText: "Search dishes, snack, etc.",
          controller: searchController,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecommendedSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 18.h),
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
                    return ListsaladOneItemWidget();
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoriesSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 16.h),
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
                    return ListmainCourse1ItemWidget();
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
