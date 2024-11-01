import 'package:flutter/material.dart';
import './../../core/app_export.dart';

enum Style { bgFillPrimary, bgOutlineSecondaryContainer }

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.shape,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
    this.borderRadius = 8.0, // Default radius, can be customized
  }) : super(key: key);

  final double? height;
  final ShapeBorder? shape;
  final Style? styleType;
  final double? leadingWidth;
  final Widget? leading;
  final Widget? title;
  final bool? centerTitle;
  final List<Widget>? actions;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      shape: shape,
      toolbarHeight: height ?? 56.h,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(context),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        60.h,
        height ?? 56.h,
      );

  Widget? _getStyle(BuildContext context) {
    switch (styleType) {
      case Style.bgFillPrimary:
        return Container(
          height: 76.h,
          width: 374.h,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        );
      default:
        return null;
    }
  }
}
