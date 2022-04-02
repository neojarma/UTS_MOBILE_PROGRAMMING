import 'package:flutter/material.dart';
import 'picture_collections.dart';

class LibraryPageBuilder extends StatefulWidget {
  const LibraryPageBuilder({Key? key}) : super(key: key);

  @override
  State<LibraryPageBuilder> createState() => _LibraryPageBuilderState();
}

class _LibraryPageBuilderState extends State<LibraryPageBuilder> {
  // initialize listOfImage variable
  final List<PictureCollections> _listOfImage = [];

  // method for cycle through all images in gallery folder,
  // and then add each of them to the listOfPicture variable
  void buildImages() {
    for (var i = 1; i <= 5; i++) {
      _listOfImage.add(
        PictureCollections(pictureNumber: i),
      );
    }
  }

  @override
  void initState() {
    super.initState();

    // call the method to generate listOfImage
    buildImages();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // vertical spacing
      crossAxisSpacing: 10,

      // horizontal spacing
      mainAxisSpacing: 10,

      // max cross axis tile
      crossAxisCount: 2,

      padding: const EdgeInsets.all(8),
      children: [..._listOfImage],
    );
  }
}
