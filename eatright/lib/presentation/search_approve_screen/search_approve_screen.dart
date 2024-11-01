import 'package:flutter/material.dart';
import 'eatright/lib/presentation/search_approve_screen'; // ignore_for_file: must_be_immutable

class SearchApproveDialog extends StatelessWidget {
  const SearchApproveDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(right: 8.h),
          padding: EdgeInsets.symmetric(vertical: 14.h),
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            borderRadius: BorderRadius.roundedBorder28,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "ACCEPT!",
                style: CustomTextStyles.headlineSmallNunitoBluegray900,
              ),
              SizedBox(height: 18.h),
              CustomImageView(
                imagePath: ImageConstant.imgVectorBluegray90098x102,
                height: 98.h,
                width: 102.h,
              ),
              SizedBox(height: 18.h),
              Text(
                "Safe for your \nhealth".toUpperCase(),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyLargeSenBluegray90001,
              ),
              SizedBox(height: 6.h)
            ],
          ),
        ),
      ],
    );
  }
}
