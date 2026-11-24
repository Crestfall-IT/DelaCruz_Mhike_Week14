import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import '../widgets/common_widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AuthHeader(
                title: 'Sign In',
                subtitle: 'Hi! Welcome back, you\'ve been missed!',
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FieldBox(label: 'Email', hint: 'you@example.com'),
                    const SizedBox(height: 16),
                    const FieldBox(
                      label: 'Password',
                      hint: '••••••••',
                      trailingIcon: Icons.visibility_off_outlined,
                    ),
                    const SizedBox(height: 14),
                    Row(
                      children: [
                        const Icon(
                          Icons.check_box_outline_blank,
                          size: 22,
                          color: AppColors.textMuted,
                        ),
                        const SizedBox(width: 6),
                        Text('Remember me', style: textTheme.bodyMedium),
                        const Spacer(),
                        Text(
                          'Forgot Password?',
                          style: textTheme.bodyMedium?.copyWith(
                            color: AppColors.primary,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const PrimaryButtonBox(label: 'Sign In'),
                    const SizedBox(height: 24),
                    const OrDivider(text: 'or sign in with'),
                    const SizedBox(height: 20),
                    const SocialRow(),
                    const SizedBox(height: 28),
                    Center(
                      child: Text.rich(
                        TextSpan(
                          text: 'Don\'t have an account? ',
                          style: textTheme.bodyMedium,
                          children: [
                            TextSpan(
                              text: 'Sign Up',
                              style: textTheme.bodyMedium?.copyWith(
                                color: AppColors.primary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
