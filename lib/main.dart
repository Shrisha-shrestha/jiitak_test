import 'package:flutter/material.dart';
import 'package:jiitak_test/src/features/bottom_navigation/views/bottom_navigation_view_model.dart';
import 'package:provider/provider.dart';

import 'src/app.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await SharedPref.init();
  runApp(MultiProvider(
    providers:  [
      ChangeNotifierProvider(create: (_) => BottomNavigationViewModel()),
    ],
    child: const JiitakApp(),
  ));
}
