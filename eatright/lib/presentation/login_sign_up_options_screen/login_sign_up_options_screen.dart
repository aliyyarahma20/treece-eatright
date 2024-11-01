import 'package:eatright/core/utils/image_constant.dart';
import 'package:eatright/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:eatright/presentation/intro_b_screen/intro_b_screen.dart';
import 'package:eatright/theme/app_decoration.dart';
import 'package:eatright/theme/custom_button_style.dart';
import 'package:eatright/theme/custom_text_style.dart';
import 'package:eatright/theme/theme_helper.dart';
import 'package:eatright/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';
import './../core/app_export.dart';
import './../widgets/custom_elevated_button.dart';

class LoginSignUpOptionsScreen extends StatelessWidget {
  const LoginSignUpOptionsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.only(
                left: 14.0,
                top: 24.0,
                right: 14.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 32.0),
                  Container(
                    height: 246.0,
                    width: 300.0,
                    margin: const EdgeInsets.only(right: 12.0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: Text(
                              "track, eat, great!",
                              style: CustomTextStyles.titleLargeIndigo300,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgLogoGame,
                          height: 246.0,
                          width: double.maxFinite,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 98.0),
                  _buildLoginArea(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// SEction Widget
  Widget _buildLoginArea(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.only(left: 4.0),
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 36.0,
      ),
      decoration: BoxDecoration(
        color: appTheme.blueGray900,
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Do you have an \naccount?",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.headlineSmallRubik.copyWith(
              height: 1.50,
            ),
          ),
          SizedBox(height: 18.0),
          CustomElevatedButton(
            text: "of course!",
            buttonStyle: CustomButtonStyles.fillWhiteA,
            buttonTextStyle: CustomTextStyles.titleMediumBlack90001,
            onPressed: () {},
          ),
          SizedBox(height: 18.0),
          CustomElevatedButton(
            text: "Register here",
            buttonStyle: CustomButtonStyles.fillGray,
            onPressed: () {},
            buttonTextStyle: null,
          ),
          SizedBox(height: 42.0),
        ],
      ),
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapOfCourse(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the registerFormScreen when the action is triggered.
  onTapRegisterHere(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerFormScreen);
  }
}
