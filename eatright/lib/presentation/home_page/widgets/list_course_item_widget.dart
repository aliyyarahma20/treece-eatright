import 'package:flutter/material.dart';
import './../../../core/app_export.dart';

class ListmainCourseItemWidget extends StatelessWidget {
  const ListmainCourseItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgUnsplashF9ehjv8igus,
          height: 140.h,
          width: 140.h,
          radius: BorderRadius.circular(
            12.h,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          "Main Course",
          overflow: TextOverflow.ellipsis,
          style: CustomTextStyles.titleMediumSenPrimary,
        )
      ],
    );
  }
}
