import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tctk/constants/gaps.dart';
import 'package:tctk/constants/sizes.dart';
import 'package:tctk/features/authentication/login_form_screen.dart';
import 'package:tctk/features/authentication/widgets/auth_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void _onEmailLoginTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const LoginFormScreen(),
      ),
    );
  }

  void _onSignUpTap(BuildContext context) {
    // Implement the sign-up logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.size40),
        child: Column(
          children: [
            Gaps.v80,
            const Text(
              "Log in to TikTok",
              style: TextStyle(
                fontSize: Sizes.size24,
                fontWeight: FontWeight.w700,
              ),
            ),
            Gaps.v20,
            const Text(
              "Manage your account, check notifications, comment on videos, and more.",
              style: TextStyle(
                fontSize: Sizes.size16,
              ),
              textAlign: TextAlign.center,
            ),
            Gaps.v40,
            GestureDetector(
              onTap: () => _onEmailLoginTap(context),
              child: const AuthButton(
                icon: FaIcon(FontAwesomeIcons.user),
                text: "Use email & password",
              ),
            ),
            Gaps.v16,
            const AuthButton(
              icon: FaIcon(FontAwesomeIcons.apple),
              text: "Continue with Apple",
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade50,
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: Sizes.size32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account?",
                style: TextStyle(
                  fontSize: Sizes.size16,
                ),
              ),
              Gaps.h5,
              GestureDetector(
                onTap: () => _onSignUpTap(context),
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: Sizes.size16,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
