import 'package:flutter/material.dart';
import '../composable/component/global/styled_appbar.dart';
import '../composable/component/library_page/library_page_builder.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StyledAppbar.getAppBar(title: 'Gallery Page', context: context),
      body: const LibraryPageBuilder(),
    );
  }
}
