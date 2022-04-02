import 'package:flutter/material.dart';

class TextFieldBuilder extends StatelessWidget {
  const TextFieldBuilder({
    Key? key,
    required TextEditingController usernameController,
    required this.label,
    this.isObscure,
  })  : _usernameController = usernameController,
        super(key: key);

  final TextEditingController _usernameController;
  final bool? isObscure;

  final String label;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isObscure ?? false,
      controller: _usernameController,
      decoration: InputDecoration(
        label: Text(label),
        hintText: 'Please enter your $label',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        filled: true,
      ),
    );
  }
}
