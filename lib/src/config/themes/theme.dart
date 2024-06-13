import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'color_constants.dart';

final ThemeData AppTheme = ThemeData(
  useMaterial3: true,
  canvasColor: ColorConstants.white,
  primaryColor: ColorConstants.primaryColor,
  scaffoldBackgroundColor: ColorConstants.background,
  brightness: Brightness.light,
  fontFamily: 'Noto Sans',
  primaryColorLight: ColorConstants.white,
  unselectedWidgetColor: ColorConstants.danger200,
  appBarTheme: const AppBarTheme(
    toolbarHeight: 60.0,
    titleTextStyle: TextStyle(color: ColorConstants.black),
    surfaceTintColor: Colors.white,
    foregroundColor: ColorConstants.white,
    shadowColor: Colors.transparent,
    elevation: 0.0,
    scrolledUnderElevation: 0.5,
    backgroundColor: ColorConstants.white,
    actionsIconTheme: IconThemeData(color: ColorConstants.gray700, fill: 0.0),
    iconTheme: IconThemeData(shadows: [], color: ColorConstants.black, size: 24),
    systemOverlayStyle: SystemUiOverlayStyle(
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark),
  ),
  expansionTileTheme: const ExpansionTileThemeData(
    iconColor: ColorConstants.black,
    collapsedIconColor: ColorConstants.black,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: ColorConstants.white,
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: true,
    enableFeedback: false,
    selectedIconTheme: IconThemeData(color: ColorConstants.primaryColor),
    unselectedIconTheme: IconThemeData(color: ColorConstants.gray600),
    unselectedItemColor: ColorConstants.gray600,
    showUnselectedLabels: true,
    selectedItemColor: ColorConstants.gray600,
    selectedLabelStyle: TextStyle(fontSize: 10, height: 20 / 10),
    unselectedLabelStyle: TextStyle(fontSize: 10, height: 20 / 10),
  ),
  bottomSheetTheme: const BottomSheetThemeData(
    constraints: BoxConstraints(maxWidth: double.maxFinite),
    elevation: 0.0,
  ),
  textTheme: const TextTheme(),
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.android: ZoomPageTransitionsBuilder(),
    },
  ),
);
