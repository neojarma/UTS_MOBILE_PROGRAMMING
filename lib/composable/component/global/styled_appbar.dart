import 'package:flutter/material.dart';
import '../../../utilities/constants.dart';
import '../../../utilities/logic.dart';
import 'appbar_actions_logout.dart';

class StyledAppbar {
  static getAppBar({
    required String title,
    required BuildContext context,
    bool isUseActionsIcon = false,
  }) {
    return AppBar(
      actions: isUseActionsIcon
          ? [
              AppbarActionsIcon(
                function: () async {
                  handleLogout(context);
                },
              ),
            ]
          : null,
      centerTitle: true,
      title: Text(
        title,
        style: kAppbarTextStyle,
      ),
      toolbarHeight: kAppbarHeight,
    );
  }
}
