import 'package:flutter/material.dart';
import 'package:eatright/core/app_export.dart';
// ignore: unused_import
import 'package:eatright/lib/widgets/app_bar/appbar_leading_iconbutton.dart';
import '../widgets/app_bar/appbar_title_image.dart';
import '../widgets/app_bar/appbar_trailing_image.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import 'artikel_page_state.dart'; // must_be_immutable

class ArtikelPage extends StatefulWidget {
  const ArtikelPage({Key? key})
      : super(
          key: key,
        );

  @override
  ArtikelPageState createState() => ArtikelPageState();
}

// ignore_for_file: must_be_immutable
class ArtikelPageState extends State<ArtikelPage>
    with TickerProviderStateMixin {
  late TabController tabViewController;

  @override
  void initState() {
    super.initState();
    tabViewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appbar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 10.h),
              _buildRecentTabColumn(context),
              Expanded(
                child: Container(
                  child: TabBarView(
                    controller: tabViewController,
                    children: [
                      ArtikelRecentTabPage(),
                      ArtikelRecommendedTabPage(),
                      ArtikelRecentTabPage()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSize _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 54.h,
      leadingWidth: 61.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeft,
        height: 44.h,
        width: 44.h,
        margin: EdgeInsets.only(left: 17.h),
        onTap: () {},
      ),
      title: SizedBox(
        width: double.maxFinite,
        child: AppbarTitleImage(
          imagePath: ImageConstant.imgScreenshot20241020,
          height: 34.h,
          width: 198.h,
          margin: EdgeInsets.only(left: 28.h),
        ),
      ),
      actions: [
        AppBarTrailingImage(
          imagePath: ImageConstant.imgPlayDeepPurpleA100,
          height: 44.h,
          width: 44.h,
          margin: EdgeInsets.only(right: 13.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRecentTabColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 14.h,
        right: 8.h,
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: TabBar(
              controller: tabViewController,
              labelPadding: EdgeInsets.zero,
              labelColor: theme.colorScheme.secondaryContainer.withOpacity(1),
              unselectedLabelColor: theme.colorScheme.secondaryContainer,
              tabs: [
                Tab(
                  child: Text(
                    "Recent",
                  ),
                ),
                Tab(
                  child: Text(
                    "Recommended",
                  ),
                ),
                Tab(
                  child: Text(
                    "Best",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowLeftOne(BuildContext context) {
    Navigator.pop(context);
  }
}
