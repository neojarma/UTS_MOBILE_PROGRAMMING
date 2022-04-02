import 'package:flutter/material.dart';

// generate container with images from assets
class PictureCollections extends StatelessWidget {
  final int pictureNumber;

  const PictureCollections({Key? key, required this.pictureNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      child: Image.asset(
        'assets/images/gallery/gallery_$pictureNumber.png',
        fit: BoxFit.cover,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            offset: Offset(0, 0),
            blurRadius: 2.0,
          ),
        ],
      ),
    );
  }
}
