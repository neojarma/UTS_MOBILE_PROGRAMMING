import 'package:flutter/material.dart';
import 'package:neo_jarmawijaya_2042006/screens/login_page.dart';
import '../composable/component/home_page/dialog_builder.dart';

// method to check wheter inputted username and password match to designated value or not
bool validateLogin(
  String username,
  String password,
  TextEditingController usernameController,
  TextEditingController passwordController,
) {
  usernameController.text = '';
  passwordController.text = '';

  return (username == 'admin' && password == 'admin') ? true : false;
}

// handle dialog, and return the value that corresponding to user choice
Future<bool> onWillPop(BuildContext context) async {
  final shouldPop = await showDialog(
    context: context,
    builder: (context) => const DialogBuilder(),
  );
  return shouldPop ?? false;
}

void logoutNavigation(BuildContext context, bool condition) {
  if (condition) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return LoginPage(
            isLogout: true,
          );
        },
      ),
    );
  }
}

void handleLogout(BuildContext context) async {
  // get the result from onWillPop
  final result = await onWillPop(context);

  // Navigate to login page
  logoutNavigation(context, result);
}
