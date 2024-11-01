import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class ListsaladOneItemWidget extends StatelessWidget {
  const ListsaladOneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 194.h,
      width: 260.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUnsplashKcaC3f3fe,
            height: 194.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              12.h,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                bottom: 14.h,
              ),
              child: Text(
                "Salad",
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
