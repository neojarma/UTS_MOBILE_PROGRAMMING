import 'package:flutter/material.dart';

class ContactBuilder extends StatelessWidget {
  final IconData icon;
  final String text;

  const ContactBuilder({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        const SizedBox(
          height: 10.0,
        ),
        Text(text),
      ],
    );
  }
}
