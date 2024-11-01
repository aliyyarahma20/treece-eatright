import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../custom_search_view.dart';

class AppbarTitleSearchview extends StatelessWidget {
  const AppbarTitleSearchview(
      {Key? key, this.hintText, this.controller, this.margin})
      : super(key: key);

  final String? hintText;
  final TextEditingController? controller;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: SizedBox(
        width: double.maxFinite,
        child: CustomSearchView(
          controller: controller,
          hintText: hintText ?? "Search dishes, snack, etc.",
          contentPadding: EdgeInsets.fromLTRB(20.h, 14.h, 12.h, 14.h),
        ),
      ),
    );
  }
}
