import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'widgets/beginnersguideList_item_widget.dart';

class ArtikelrecentTabPage extends StatefulWidget {
  const ArtikelrecentTabPage({Key? key})
      : super(
          key: key,
        );

  @override
  ArtikelrecentTabPageState createState() => ArtikelrecentTabPageState();
}

class ArtikelrecentTabPageState extends State<ArtikelrecentTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [SizedBox(height: 28.h), _buildBeginnersGuideList(context)],
      ),
    );
  }

  /// Section Widget
  Widget _buildBeginnersGuideList(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.zero,
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 18.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return BeginnersguidelistItemWidget();
        },
      ),
    );
  }
}
