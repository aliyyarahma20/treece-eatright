import 'package:eatright/core/app_export.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:eatright/lib/core/app_export.dart';
import './../custom_icon_button.dart';

class AppbarTrailingIconbutton extends StatelessWidget {
  AppbarTrailingIconbutton(
      {Key? key,
      this.imagePath,
      this.height,
      this.width,
      this.onTap,
      this.margin})
      : super(
          key: key,
        );

  final double? height;

  final double? width;

  final String? imagePath;

  final Function? onTap;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: GestureDetector(
        onTap: () {
          onTap?.call();
        },
        child: CustomIconButton(
          height: height ?? 36.h,
          width: width ?? 54.h,
          padding: EdgeInsets.all(8.h),
          decoration: IconButtonStyleHelper.none,
          child: CustomImageView(
            imagePath: ImageConstant.imgAirplane,
          ),
        ),
      ),
    );
  }
}
