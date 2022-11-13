import 'package:favorite_places/views/review.dart';
import 'package:flutter/cupertino.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: const [
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
    ]);
  }
}
