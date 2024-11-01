import 'package:eatright/core/app_export.dart';
import 'package:eatright/theme/custom_button_style.dart';
import 'package:flutter/material.dart';
import 'eatright/lib/widgets/custom_elevated_button.dart';
import '../widgets/custom_outline_button.dart';
import '../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailoneController = TextEditingController();

  TextEditingController passwordthreeController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  get passwordController => null;

  get emailController => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  left: 20.h,
                  top: 10.h,
                  right: 20.h,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "Welcome Back!",
                          style:
                              CustomTextStyles.headlineSmallNunitoBluegray900,
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 284.h,
                        margin: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "long time no see! let's continue where you left off.",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style:
                              CustomTextStyles.titleLargeBluegray90001.copyWith(
                            height: 1.20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 14.h),
                    _buildEmailSection(context),
                    SizedBox(height: 16.h),
                    _buildPasswordSection(context),
                    SizedBox(height: 24.h),
                    CustomElevatedButton(
                      text: "Login",
                      margin: EdgeInsets.only(
                        left: 4.h,
                        right: 2.h,
                      ),
                    ),
                    SizedBox(height: 26.h),
                    Text(
                      "Forgot password?",
                      style: CustomTextStyles.titleMediumPrimary,
                    ),
                    SizedBox(height: 18.h),
                    _buildOrSeparator(context),
                    SizedBox(height: 24.h),
                    CustomOutlineButton(
                      text: "Masuk dengan Google",
                      margin: EdgeInsets.only(right: 8.h),
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 16.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFlatColorIconsGoogle,
                          height: 20.h,
                          width: 20.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(height: 22.h),
                    CustomElevatedButton(
                      text: "Facebook",
                      margin: EdgeInsets.only(right: 8.h),
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 16.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgAkariconsfacebookFill,
                          height: 20.h,
                          width: 20.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                      buttonStyle: CustomButtonStyles.fillLightBlue,
                    ),
                    SizedBox(height: 24.h),
                    GestureDetector(
                      onTap: () {},
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "You don't have an account? ",
                              style: theme.textTheme.bodyMedium,
                            ),
                            TextSpan(
                              text: "Sign up",
                              style: CustomTextStyles.bodyMediumPrimary,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "By ",
                            style: theme.textTheme.bodyMedium,
                          ),
                          TextSpan(
                            text: "continuing",
                            style: theme.textTheme.bodyMedium,
                          ),
                          TextSpan(
                            text: ", you",
                            style: theme.textTheme.bodyMedium,
                          ),
                          const TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "agree to the",
                            style: theme.textTheme.bodyMedium,
                          ),
                          const TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "Terms of Services",
                            style: theme.textTheme.titleSmall,
                          ),
                          const TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "&",
                            style: theme.textTheme.bodyMedium,
                          ),
                          const TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "Privacy Policy",
                            style: theme.textTheme.titleSmall,
                          )
                        ],
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 18.h),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.only(
        left: 4.0,
        right: 2.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email Address",
            style: CustomTextStyles.bodyMediumOnPrimaryContainer,
          ),
          const SizedBox(height: 8.0),
          CustomTextFormField(
            controller: emailController,
            hintText: "Your email address",
            textInputType: TextInputType.emailAddress,
            prefix: Container(
              margin: const EdgeInsets.all(16.0),
              child: Image.asset(
                'assets/icons/lock.png',
                height: 24.0,
                width: 24.0,
                fit: BoxFit.contain,
              ),
            ),
            prefixConstraints: const BoxConstraints(
              maxHeight: 56.0,
            ),
            contentPadding: const EdgeInsets.fromLTRB(16.0, 16.0, 20.0, 16.0),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.only(
        left: 4.0,
        right: 2.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Password",
            style: CustomTextStyles.bodyMediumOnPrimaryContainer,
          ),
          const SizedBox(height: 8.0),
          CustomTextFormField(
            controller: passwordController,
            hintText: "Your password",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
              margin: const EdgeInsets.all(16.0),
              child: Image.asset(
                'assets/icons/icon.png',
                height: 24.0,
                width: 24.0,
                fit: BoxFit.contain,
              ),
            ),
            prefixConstraints: const BoxConstraints(
              maxHeight: 56.0,
            ),
            suffix: Container(
              margin: const EdgeInsets.fromLTRB(16.0, 16.0, 20.0, 16.0),
              child: Image.asset(
                'assets/icons/blue_gray_100.png',
                height: 24.0,
                width: 24.0,
                fit: BoxFit.contain,
              ),
            ),
            suffixConstraints: const BoxConstraints(
              maxHeight: 56.0,
            ),
            obscureText: true,
            contentPadding: const EdgeInsets.fromLTRB(16.0, 16.0, 20.0, 16.0),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOrSeparator(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Divider(),
            ),
          ),
          const SizedBox(width: 16.0),
          const Align(
            alignment: Alignment.center,
            child: Text(
              "OR",
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(width: 16.0),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Divider(),
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates to the registerAFormScreen when the action is triggered.
  onTapTxtYoudonthavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerBFormScreen);
  }
}
