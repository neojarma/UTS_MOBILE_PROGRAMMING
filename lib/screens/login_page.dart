import 'package:flutter/material.dart';
import 'package:neo_jarmawijaya_2042006/composable/component/login_page/login_page_builder.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  bool? isLogout;

  LoginPage({Key? key, this.isLogout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: LoginPageBuilder(isLogout: isLogout),
    );
  }
}
