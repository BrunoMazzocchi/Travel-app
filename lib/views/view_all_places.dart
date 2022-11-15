import 'package:favorite_places/widgets/card_place.dart';
import 'package:flutter/material.dart';

import '../widgets/gradient_back.dart';

class AllPlaces extends StatelessWidget {
  const AllPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var descriptionDummy =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget aliquet nibh praesent tristique magna sit amet purus gravida. "
        "In iaculis nunc sed augue lacus viverra vitae congue. Eget duis at tellus at. Nisi vitae suscipit tellus mauris. Varius morbi enim nunc faucibus. Adipiscing at in tellus integer feugiat scelerisque varius morbi. Tellus id interdum velit laoreet id donec. ";
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return MaterialApp(
        home: Scaffold(
            body: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.topStart,

          children: [
            const GradientBack(title: "Places"),
            Container(
              margin: const EdgeInsets.only(top: 250.0),
              height: queryData.size.height - 315,
              width: 600,
              child: ListView(
                children: [
                  CardPlace(
                    name: "Bahamas",
                    description: descriptionDummy,
                    urlImage: "assets/images/beach.jpeg",
                  ),
                  const CardPlace(
                    name: "A Mountain",
                    description: "Mountain is a place",
                    urlImage: "assets/images/mountain.jpeg",
                  ),
                  const CardPlace(
                    name: "Bahamas",
                    description: "Bahamas is a place",
                    urlImage: "assets/images/beach.jpeg",
                  ),
                  const CardPlace(
                    name: "Bahamas",
                    description: "Bahamas is a place",
                    urlImage: "assets/images/beach.jpeg",
                  ),
                  const CardPlace(
                    name: "Bahamas",
                    description: "Bahamas is a place",
                    urlImage: "assets/images/beach.jpeg",
                  ),
                  const CardPlace(
                    name: "Bahamas",
                    description: "Bahamas is a place",
                    urlImage: "assets/images/beach.jpeg",
                  ),
                  const CardPlace(
                    name: "Bahamas",
                    description: "Bahamas is a place",
                    urlImage: "assets/images/beach.jpeg",
                  ),
                ],
              ),
            )
          ],
        )
      ],
    )));
  }
}
