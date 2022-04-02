import 'package:flutter/material.dart';
import '../../../utilities/constants.dart';
import '../../model/music_collections_model.dart';

class CollectionMenuBuilder extends StatelessWidget {
  const CollectionMenuBuilder({
    Key? key,
  }) : super(key: key);

  final double padding = 14;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listOfMusic.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: kContainerHeight,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              // specify the color of container,
              // otherwise box shadow color will take over the container color
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Image.asset(
                    listOfMusic[index].imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(padding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // title
                        Padding(
                          padding: EdgeInsets.only(top: padding),
                          child: Text(
                            listOfMusic[index].title,
                            style: kHeadline5FontStyle.copyWith(
                              color: Colors.black,
                            ),
                          ),
                        ),

                        // singer
                        Text(
                          'by ${listOfMusic[index].singer}',
                          style: kOverlineFontStyle,
                        ),

                        // description
                        Container(
                          margin: const EdgeInsets.only(top: 24.0),
                          child: Text(
                            listOfMusic[index].description,
                            style: kBody2FontStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
