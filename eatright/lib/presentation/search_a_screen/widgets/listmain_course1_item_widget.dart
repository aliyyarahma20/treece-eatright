import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class ListmainCourse1ItemWidget extends StatelessWidget {
  const ListmainCourse1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgUnsplashR9ehJv8iqus,
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
          style: CustomTextStyles.titleMediumSenBluegray900,
        ),
      ],
    );
  }
}
