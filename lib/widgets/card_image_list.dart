import 'package:favorite_places/widgets/card_image.dart';
import 'package:flutter/cupertino.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView(
        padding: const EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: const [
          CardImage(pathImage: 'assets/images/beach.jpeg'),
          CardImage(pathImage: 'assets/images/beach_palm.jpeg'),
          CardImage(pathImage: 'assets/images/mountain.jpeg'),
          CardImage(pathImage: 'assets/images/mountain_stars.jpeg'),
          CardImage(pathImage: 'assets/images/river.jpeg'),
          CardImage(pathImage: 'assets/images/sunset.jpeg'),
        ],
      )
    );
  }
}
