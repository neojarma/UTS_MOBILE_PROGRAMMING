import 'package:flutter/material.dart';
import '../composable/component/home_page/home_page_menu_builder.dart';
import '../composable/component/global/styled_appbar.dart';
import '../utilities/logic.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        handleLogout(context);

        // we return false, we have to redirect to Login screen
        return false;
      },
      child: Scaffold(
        appBar: StyledAppbar.getAppBar(
          title: 'Home Page',
          context: context,
          isUseActionsIcon: true,
        ),
        body: const HomePageMenuBuilder(),
      ),
    );
  }
}
