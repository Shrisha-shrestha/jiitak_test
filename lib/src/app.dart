import 'package:flutter/material.dart';
import 'package:jiitak_test/src/config/router/app_router.dart';
import 'package:jiitak_test/src/config/themes/theme.dart';

class JiitakApp extends StatelessWidget {
  const JiitakApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme,
      title: 'Jiitak',
      // theme: context.watch<SwitchUserProvider>().currentUser == CurrentUser.employer ? employerTheme : jobseekerTheme,
      routerConfig: AppRouter.router,
    );
  }
}
