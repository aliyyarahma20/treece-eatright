import 'package:flutter/material.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/intro_a_screen/intro_a_screen.dart';
import '../presentation/intro_b_screen/intro_b_screen.dart';
import '../presentation/intro_c_screen/intro_c_screen.dart';
import '../presentation/intro_screen/intro_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/login_sign_up_options_screen/login_sign_up_options_screen.dart';
import '../presentation/search_a_screen/search_a_screen.dart';
import '../presentation/search_d_screen/search_d_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String introScreen = '/intro_screen';

  static const String introAScreen = '/intro_a_screen';

  static const String introBScreen = '/intro_b_screen';

  static const String introCScreen = '/intro_c_screen';

  static const String loginSignUpOptionsScreen =
      '/login_sign_up_options_screen';

  static const String loginScreen = '/login_screen';

  static const String registerBFormScreen = '/register_b_form_screen';

  static const String homePage = '/home_page';

  static const String searchAScreen = '/search_a_screen';

  static const String searchAInitialPage = '/search_a_initial_page';

  static const String searchBScreen = '/search_b_screen';

  static const String searchCScreen = '/search_c_screen';

  static const String searchDScreen = '/search_d_screen';

  static const String artikelPage = '/artikel_page';

  static const String artikelrecentTabPage = '/artikelrecent_tab_page';

  static const String profilePage = '/profile_page';

  static const String tableOneScreen = '/table_one_screen';

  static const String tableTwoScreen = '/table_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    introScreen: (context) => IntroScreen(),
    introAScreen: (context) => IntroAScreen(),
    introBScreen: (context) => IntroBScreen(),
    introCScreen: (context) => IntroCScreen(),
    loginSignUpOptionsScreen: (context) => LoginSignUpOptionsScreen(),
    loginScreen: (context) => LoginScreen(),
    registerScreen: (context) => RegisterScreen(),
    verificationScreen: (context) => VerificationScreen(),
    verificationSuccedScreen: (context) => VerificationSuccedScreen(),
    registerAFormScreen: (context) => RegisterAFormScreen(),
    registerBFormScreen: (context) => RegisterBFormScreen(),
    verificationSuccedOneScreen: (context) => VerificationSuccedOneScreen(),
    scanBadgeScreen: (context) => ScanBadgeScreen(),
    scanInputScreen: (context) => ScanInputScreen(),
    scanInput1Screen: (context) => ScanInput1Screen(),
    searchAScreen: (context) => SearchAScreen(),
    searchBScreen: (context) => SearchBScreen(),
    searchCScreen: (context) => SearchCScreen(),
    searchDScreen: (context) => SearchDScreen(),
    tableOneScreen: (context) => TableOneScreen(),
    tableTwoScreen: (context) => TableTwoScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => IntroScreen()
  };
}
