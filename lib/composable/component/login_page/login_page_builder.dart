import 'package:flutter/material.dart';
import '../../../utilities/constants.dart';
import '../../../utilities/logic.dart';
import 'text_field_builder.dart';
import 'welcome_animation_builder.dart';

// ignore: must_be_immutable
class LoginPageBuilder extends StatefulWidget {
  bool? isLogout;
  LoginPageBuilder({Key? key, this.isLogout}) : super(key: key);

  @override
  State<LoginPageBuilder> createState() => _LoginPageBuilderState();
}

class _LoginPageBuilderState extends State<LoginPageBuilder> {
  final String onLogin = 'Welcome...';
  final String onLogout = 'Bye Bye...';
  final String onError = 'Wrong username or password';

  // define controller
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // user input value
  late String _inputtedUsername;
  late String _inputtedPassword;

  // bool condition for check credentials
  bool _isValid = true;

  @override
  void dispose() {
    // discard any resource used by object
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WelcomeAnimationBuilder(
            widget: widget,
            onLogout: onLogout,
            onLogin: onLogin,
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(12.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(50),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Please enter your credentials below',
                    style: kProfileAddressTextStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFieldBuilder(
                    usernameController: _usernameController,
                    label: 'Username',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFieldBuilder(
                    usernameController: _passwordController,
                    label: 'Password',
                    isObscure: true,
                  ),
                  (_isValid == false)
                      ? Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Text(
                            onError,
                            style: kErrorTextStyle,
                          ),
                        )
                      : const Text(''),
                  const SizedBox(
                    height: 14,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        minimumSize: const Size(40, 40),
                      ),
                      onPressed: () {
                        // assign inputtedUsername and inputtedPassword variable
                        // with each rellevant controller
                        _inputtedUsername = _usernameController.text;
                        _inputtedPassword = _passwordController.text;

                        // call the validateLogin method to update isValid value
                        setState(() {
                          _isValid = validateLogin(
                            _inputtedUsername,
                            _inputtedPassword,
                            _usernameController,
                            _passwordController,
                          );
                        });

                        // if isValid = true, redirect to home_page
                        (_isValid == true)
                            ? Navigator.pushReplacementNamed(context, '/home')
                            : null;
                      },
                      child: const Text(
                        'Submit',
                        style: kButtonTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
