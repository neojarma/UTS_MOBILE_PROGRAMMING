import 'package:flutter/material.dart';
import '../composable/component/global/styled_appbar.dart';
import '../composable/component/profile_page/profile_page_builder.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StyledAppbar.getAppBar(title: 'Profile page', context: context),
      body: const ProfilePageBuilder(),
    );
  }
}
