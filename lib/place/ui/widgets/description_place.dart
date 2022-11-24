import 'package:favorite_places/widgets/button_purple.dart';
import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace;
  final int stars;
  final String descriptionPlace;

  const DescriptionPlace(
      {Key? key,
      required this.namePlace,
      required this.stars,
      required this.descriptionPlace})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var descriptionDummy =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget aliquet nibh praesent tristique magna sit amet purus gravida. \n\nIn iaculis nunc sed augue lacus viverra vitae congue. Eget duis at tellus at. Nisi vitae suscipit tellus mauris. Varius morbi enim nunc faucibus. Adipiscing at in tellus integer feugiat scelerisque varius morbi. Tellus id interdum velit laoreet id donec. ";

    final star = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

/*    final starHalf = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );*/
    final description = Container(
        margin: const EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0,
        ),
        child: Text(
          descriptionDummy,
          style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 14.0,
            fontWeight: FontWeight.normal,
            color: Color(0xFF56575a),
          ),
        ));
    final titleStars = Row(
      children: [
        Container(
            // Margenes especificos para cada lado
            margin: const EdgeInsets.only(
              top: 320.0,
              left: 20.0,
              right: 20.0,
            ),
            child: Text(
              namePlace,
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
                fontFamily: "Lato",
              ),
              textAlign: TextAlign.left,
            )),
        Row(
          children: [
            for (var i = 0; i < stars; i++) star,
          ],
        ),
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleStars,
        description,
         ButtonPurple(
          buttonText: "Navigate", onPressed: () {
           print('Hola');
          },
        )
      ],
    );
  }
}
