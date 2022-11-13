import 'package:favorite_places/views/review.dart';
import 'package:flutter/cupertino.dart';

import 'description_place.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var descriptionDummy =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget aliquet nibh praesent tristique magna sit amet purus gravida. \n\nIn iaculis nunc sed augue lacus viverra vitae congue. Eget duis at tellus at. Nisi vitae suscipit tellus mauris. Varius morbi enim nunc faucibus. Adipiscing at in tellus integer feugiat scelerisque varius morbi. Tellus id interdum velit laoreet id donec. ";
    var titleDummy = "Bahamas";
    var stars = 2;

    return SingleChildScrollView(
        child: Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: Column(children: const [
        Review(
            pathImage: "assets/images/avatar.jpg",
            name: "Master Chetos",
            details: "1 review 5 photos",
            comment: "There is an amazing place in Sri Lanka",
            stars: 5),
        Review(
            pathImage: "assets/images/link.jpg",
            name: "El Zelda",
            details: "2 review 6 photos",
            comment: "Shitty place",
            stars: 1),
        Review(
            pathImage: "assets/images/zelda.jpg",
            name: "La novia de Link",
            details: "3 review 7 photos",
            comment: "I love this place",
            stars: 5),
        Review(
            pathImage: "assets/images/mario.jpg",
            name: "Mario Bros",
            details: "4 review 8 photos",
            comment: "I love this place",
            stars: 5),
        Review(
            pathImage: "assets/images/craig.jpg",
            name: "Craig",
            details: "5 review 8 photos",
            comment: "Shitty place",
            stars: 5),
      ]),
    ));
  }
}
