import 'package:flutter/material.dart';
import '../composable/component/collection_page/collection_menu_builder.dart';
import '../composable/component/global/styled_appbar.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          StyledAppbar.getAppBar(title: 'Collection Page', context: context),
      body: const CollectionMenuBuilder(),
    );
  }
}
