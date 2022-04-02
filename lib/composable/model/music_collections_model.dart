class MusicCollectionModel {
  final String imagePath;
  final String title;
  final String singer;
  final String description;
  final String released;

  MusicCollectionModel({
    required this.imagePath,
    required this.title,
    required this.singer,
    required this.description,
    required this.released,
  });
}

List<MusicCollectionModel> listOfMusic = [
  MusicCollectionModel(
    imagePath: 'assets/images/music/song_1.jpg',
    title: 'IRAS 17514',
    singer: '王成功',
    description:
        'Otto Apocalypse 2nd Tittle Song from "Thus Spoke Apocalypse" Short Anime',
    released: '2022',
  ),
  MusicCollectionModel(
    imagePath: 'assets/images/music/song_2.jpg',
    title: 'Moon Halo',
    singer: '茶理理 × TetraCalyx × Hanser',
    description: 'Honkai Impact 3Rd "Everlasting Flames" Animated Short Theme',
    released: '2021',
  ),
  MusicCollectionModel(
    imagePath: 'assets/images/music/song_3.jpg',
    title: 'Regression',
    singer: 'Ayanga',
    description:
        'Honkai Impact 3rd "Thus Spoke Apocalypse" Animated Short Theme Song',
    released: '2022',
  ),
  MusicCollectionModel(
    imagePath: 'assets/images/music/song_4.jpg',
    title: 'Nightglow',
    singer: '蔡健雅',
    description: 'Honkai Impact 3rd "Last Lession" Animated Short Theme Song',
    released: '2018',
  ),
  MusicCollectionModel(
    imagePath: 'assets/images/music/song_5.jpg',
    title: 'Rubia',
    singer: 'Zhou Shen',
    description:
        'Honkai Impact 3rd "Shattered Samsara" Animated Short Theme Song',
    released: '2021',
  ),
];
