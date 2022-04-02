import 'package:flutter/material.dart';
import '../../../utilities/constants.dart';
import '../../model/diary_card_model.dart';
import 'expansion_card.dart';

class DiaryCardBuilder extends StatelessWidget {
  const DiaryCardBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listOfDiaryCard.length,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.fromLTRB(10, 8, 10, 0),
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: ExpansionCard(
            gif: listOfDiaryCard[index].gifPath,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  listOfDiaryCard[index].header,
                  style: kBody1FontStyle.copyWith(fontSize: 30),
                ),
                Text(
                  listOfDiaryCard[index].sub,
                  style: kBody2FontStyle.copyWith(fontSize: 20),
                ),
              ],
            ),
            children: [
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  listOfDiaryCard[index].description,
                  textAlign: TextAlign.start,
                  softWrap: true,
                  style: kBody1FontStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    height: 1.2,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
