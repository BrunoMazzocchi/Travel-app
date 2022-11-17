import 'package:flutter/cupertino.dart';

import 'card_place.dart';

class MainPlaceList extends StatelessWidget {
  const MainPlaceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var descriptionDummy =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget aliquet nibh praesent tristique magna sit amet purus gravida. "
        "In iaculis nunc sed augue lacus viverra vitae congue. Eget duis at tellus at. Nisi vitae suscipit tellus mauris. Varius morbi enim nunc faucibus. Adipiscing at in tellus integer feugiat scelerisque varius morbi. Tellus id interdum velit laoreet id donec. ";

    return ListView(
      children: [
        CardPlace(
          name: "Bahamas",
          description: descriptionDummy,
          urlImage: "assets/images/beach.jpeg",
        ),
        CardPlace(
          name: "Mountain",
          description: descriptionDummy,
          urlImage: "assets/images/mountain.jpeg",
        ),
        CardPlace(
          name: "Sunset",
          description: descriptionDummy,
          urlImage: "assets/images/sunset.jpeg",
        ),
        CardPlace(
          name: "Mountain Stars",
          description: descriptionDummy,
          urlImage: "assets/images/mountain_stars.jpeg",
        ),
      ],
    );
  }
}
