import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jiitak_test/src/shared/widgets/custom_buttons.dart';

class InitialPageView extends StatelessWidget {
  const InitialPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jiitak UI Conversion Test'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/png/jiitak.png', height: 100.0, width: 100.0),
              const SizedBox(height: 16.0),
              CustomElevatedButton(
                onPressed: () => context.push('/bottomNavigation'),
                title: 'Bottom Navigation',
              ),
              const SizedBox(height: 16.0),
              CustomElevatedButton(
                title: 'Details',
                onPressed: () => context.push('/details'),
              ),
              const SizedBox(height: 16.0),
              CustomElevatedButton(
                title: 'Edit Profile',
                onPressed: () => context.push('/editProfile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
