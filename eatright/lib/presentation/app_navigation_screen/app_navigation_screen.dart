import 'package:eatright/presentation/search_approve_screen/search_approve_screen.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:eatright/lib/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                ),
                child: const Column(
                  children: [
                    SizedBox(height: 10.0),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "App Navigation",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Check your app's UI from the below demo screens of your app.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF888888),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5.0),
              const Divider(
                height: 1.0,
                thickness: 1.0,
                color: Color(0xFF000000),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "1. Intro",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.introScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2. Intro A",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.introAScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "3. Intro B",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.introBScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "4. Intro C",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.introCScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "5. Login / Sign Up Options",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.loginSignUpOptionsScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "6. Login",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.loginScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "7. Register",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.registerScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "8. Verification",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.verificationScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "9. Verification Success",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.verificationSuccessScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "10. Register A Form",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.registerAFormScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "11. Register B Form",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.registerBFormScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "13. Scan Badge",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.scanBadgeScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "14. Scan Input",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.scanInputScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "15. Scan Input",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.scanInput1Screen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "17. Search A",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.searchAScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "18. Search B",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.searchBScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "19. Search C",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.searchCScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "20. Search D",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.searchDScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "21. Search Approve - Dialog",
                          onTapScreenTitle: () => onTapDialogTitle(
                            context,
                            SearchApproveDialog(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget for screen titles
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    required Function onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle.call();
      },
      child: Column(
        children: [
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black54,
                  size: 16,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Divider(
            height: 1.0,
            thickness: 1.0,
            color: Color(0xFF888888),
          ),
        ],
      ),
    );
  }

  /// Common click event for dialog
  void onTapDialogTitle(BuildContext context, Widget className) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: className,
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.zero,
        );
      },
    );
  }

  /// Common click event for screen navigation
  void onTapScreenTitle(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }
}

// You'll need to define AppRoutes in a separate file:
class AppRoutes {
  static const String introScreen = '/intro';
  static const String introAScreen = '/intro_a';
  static const String introBScreen = '/intro_b';
  static const String introCScreen = '/intro_c';
  static const String loginSignUpOptionsScreen = '/login_signup_options';
  static const String loginScreen = '/login';
  static const String registerScreen = '/register';
  static const String verificationScreen = '/verification';
  static const String verificationSuccessScreen = '/verification_success';
  static const String registerAFormScreen = '/register_a_form';
  static const String registerBFormScreen = '/register_b_form';
  static const String scanBadgeScreen = '/scan_badge';
  static const String scanInputScreen = '/scan_input';
  static const String scanInput1Screen = '/scan_input_1';
  static const String searchAScreen = '/search_a';
  static const String searchBScreen = '/search_b';
  static const String searchCScreen = '/search_c';
  static const String searchDScreen = '/search_d';

  static String registerFormScreen;
}
