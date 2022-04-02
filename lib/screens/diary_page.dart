import 'package:flutter/material.dart';
import '../composable/component/diary_page/diary_card_builder.dart';
import '../composable/component/global/styled_appbar.dart';

class DiaryPage extends StatelessWidget {
  const DiaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StyledAppbar.getAppBar(title: 'Diary Page', context: context),
      body: const DiaryCardBuilder(),
    );
  }
}
