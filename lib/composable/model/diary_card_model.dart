class DiaryCardModel {
  final String gifPath;
  final String header;
  final String sub;
  final String description;

  const DiaryCardModel({
    required this.gifPath,
    required this.header,
    required this.sub,
    required this.description,
  });
}

List<DiaryCardModel> listOfDiaryCard = [
  const DiaryCardModel(
    header: 'Saturday',
    sub: 'Mar 5, 2022',
    gifPath: 'assets/gif/gif_1.gif',
    description:
        'Went on vacation near beach.\nWished someone was here which led to going to a meeting.\nExperienced art which led to someone was bitchy at me.\nHelped resolve a fight which led to taking care of personal business.',
  ),
  const DiaryCardModel(
    header: 'Tuesday',
    sub: 'Mar 8, 2022',
    gifPath: 'assets/gif/gif_2.gif',
    description:
        'Went out to dinner.\nTook a walk to nowhere in particular which caused making plans.\nPeople said nice things about me to felt sick.\nWorked together with someone as usual.\nHad a full day which led to collaborating with someone.',
  ),
  const DiaryCardModel(
    header: 'Wednesday',
    sub: 'Mar 16, 2022',
    gifPath: 'assets/gif/gif_3.gif',
    description:
        'Had a full day because someone did something cool.\nHad someone over as usual.\nSomeone bothered me then collaborated with someone.\nCooked to go out for drinks.\nHad a good idea while finishing some work.',
  ),
  const DiaryCardModel(
    header: 'Friday',
    sub: 'Mar 18, 2022',
    gifPath: 'assets/gif/gif_4.gif',
    description:
        'Wished someone was here while avoiding a responsibility.\nWent to a class which caused a storm.\nWorked together with someone which caused a storm.\nSaw art because someone bothered me.',
  ),
  const DiaryCardModel(
    header: 'Monday',
    sub: 'Mar 28, 2022',
    gifPath: 'assets/gif/gif_5.gif',
    description:
        'Went to a class as usual\nLearned something new because someone got on my nerves.\nWent somewhere because someone got angry at me.\nWent to a sporting event as usual.',
  ),
];
