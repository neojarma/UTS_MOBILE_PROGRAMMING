import 'package:flutter/material.dart';

class AppbarActionsIcon extends StatelessWidget {
  final VoidCallback function;
  const AppbarActionsIcon({
    Key? key,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.logout,
              size: 35,
            ),
            Text('Log Out')
          ],
        ),
      ),
    );
  }
}
