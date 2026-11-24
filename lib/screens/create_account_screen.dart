import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import '../widgets/common_widgets.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

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
                title: 'Create Account',
                subtitle: 'Join us in just a few steps.',
                showBack: true,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FieldBox(label: 'Name', hint: 'Juan Dela Cruz'),
                    const SizedBox(height: 12),
                    const FieldBox(label: 'Phone Number', hint: '09123456789'),
                    const SizedBox(height: 12),
                    const FieldBox(label: 'Email', hint: 'you@example.com'),
                    const SizedBox(height: 12),
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
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              text: 'Agree with ',
                              style: textTheme.bodyMedium,
                              children: [
                                TextSpan(
                                  text: 'Terms & Conditions',
                                  style: textTheme.bodyMedium?.copyWith(
                                    color: AppColors.primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const PrimaryButtonBox(label: 'Sign Up'),
                    const SizedBox(height: 20),
                    const OrDivider(text: 'or sign up with'),
                    const SizedBox(height: 16),
                    const SocialRow(),
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
