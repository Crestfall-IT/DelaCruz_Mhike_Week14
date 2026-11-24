import 'package:flutter/material.dart';

import 'screens/create_account_screen.dart';
import 'screens/login_screen.dart';
import 'theme/app_theme.dart';

/// PREVIEW SWITCH: change this value, then hot restart to see the other screen.
enum PreviewScreen { login, createAccount }

const PreviewScreen kPreview = PreviewScreen.createAccount ;

void main() {
  runApp(const NtcLoginApp());
}

class NtcLoginApp extends StatelessWidget {
  const NtcLoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NTC Login App',
      debugShowCheckedModeBanner: false,
      theme: buildAppTheme(),
      home: kPreview == PreviewScreen.login
          ? const LoginScreen()
          : const CreateAccountScreen(),
    );
  }
}
