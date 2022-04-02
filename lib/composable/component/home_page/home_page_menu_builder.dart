import 'package:flutter/material.dart';
import '../../../utilities/constants.dart';
import '../../model/home_menu_model.dart';
import 'custom_card_shape.dart';

class HomePageMenuBuilder extends StatelessWidget {
  const HomePageMenuBuilder({
    Key? key,
  }) : super(key: key);

  final double _borderRadius = 24;
  final double _iconSize = 75;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35),
      child: ListView.builder(
        itemCount: listOfHomePageMenu.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),

            //add gestureDetector widget for redirecting to desired screens
            child: GestureDetector(
              onTap: () =>
                  Navigator.pushNamed(context, listOfHomePageMenu[index].path),

              // build every card with stack, (3 layer),
              // (1) base linear gradient color
              // (2) custom card shape
              // (3) the text
              child: Stack(
                children: [
                  /// Layer 1 of stack
                  /// container with linear gradient background
                  Container(
                    height: kContainerHeight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(_borderRadius),
                      gradient: LinearGradient(
                        colors: [
                          listOfHomePageMenu[index].startColor,
                          listOfHomePageMenu[index].endColor
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.blue,
                          blurRadius: 3,
                          offset: Offset(-3, 5),
                        )
                      ],
                    ),
                  ),

                  /// layer 2 of stack
                  /// custom shape
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: CustomPaint(
                      // the size of custom shape
                      // the height of layer 2 stack is equal to container height
                      size: const Size(100, kContainerHeight),
                      painter: CustomCardShapePainter(
                        radius: _borderRadius,
                        startColor: listOfHomePageMenu[index].startColor,
                        endColor: listOfHomePageMenu[index].endColor,
                      ),
                    ),
                  ),

                  /// layer 3 of stack
                  /// some text and icon
                  //make the row fill all the free space in cross axis
                  Positioned.fill(
                    child: Row(
                      children: [
                        Expanded(
                          child: Icon(
                            listOfHomePageMenu[index].icon,
                            size: _iconSize,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                listOfHomePageMenu[index].title,
                                style: kHeadline5FontStyle,
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              Text(
                                listOfHomePageMenu[index].description,
                                style: kBody1FontStyle,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
