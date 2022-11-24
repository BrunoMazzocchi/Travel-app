import 'package:favorite_places/place/ui/widgets/card_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 350,
        child: ListView(
          padding: const EdgeInsets.all(25),
          scrollDirection: Axis.horizontal,
          children: [
            CardImage(
              pathImage: 'assets/images/beach.jpeg',
              height: 200,
              width: 250,
              leftMargin: 20,
              onPressedFabIcon: () {},
              iconData: Icons.favorite,
            ),
            CardImage(pathImage: 'assets/images/beach_palm.jpeg',
              height: 200,
              width: 250,
              leftMargin: 20,
              onPressedFabIcon: () {},
              iconData: Icons.favorite,
            ),
            CardImage(pathImage: 'assets/images/mountain.jpeg',
              height: 200,
              width: 250,
              leftMargin: 20,
              onPressedFabIcon: () {},
              iconData: Icons.favorite,
            ),
            CardImage(pathImage: 'assets/images/mountain_stars.jpeg',
              height: 200,
              width: 250,
              leftMargin: 20,
              onPressedFabIcon: () {},
              iconData: Icons.favorite,
            ),
            CardImage(pathImage: 'assets/images/river.jpeg',
              height: 200,
              width: 250,
              leftMargin: 20,
              onPressedFabIcon: () {},
              iconData: Icons.favorite,
            ),
            CardImage(pathImage: 'assets/images/sunset.jpeg',
              height: 200,
              width: 250,
              leftMargin: 20,
              onPressedFabIcon: () {},
              iconData: Icons.favorite,
            ),
          ],
        ));
  }
}
