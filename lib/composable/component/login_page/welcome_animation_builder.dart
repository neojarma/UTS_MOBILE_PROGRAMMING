import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../../../utilities/constants.dart';
import 'login_page_builder.dart';

class WelcomeAnimationBuilder extends StatelessWidget {
  const WelcomeAnimationBuilder({
    Key? key,
    required this.widget,
    required this.onLogout,
    required this.onLogin,
  }) : super(key: key);

  final LoginPageBuilder widget;
  final String onLogout;
  final String onLogin;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: kLoginPageTextStyle.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            AnimatedTextKit(
              totalRepeatCount: 1,
              animatedTexts: [
                TypewriterAnimatedText(
                  (widget.isLogout == true) ? onLogout : onLogin,
                  textStyle: kLoginPageTextStyle,
                  speed: const Duration(milliseconds: 190),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
