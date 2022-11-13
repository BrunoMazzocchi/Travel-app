import 'package:favorite_places/widgets/card_place.dart';
import 'package:flutter/material.dart';

class AllPlaces extends StatelessWidget {
  const AllPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var descriptionDummy =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget aliquet nibh praesent tristique magna sit amet purus gravida. "
        "In iaculis nunc sed augue lacus viverra vitae congue. Eget duis at tellus at. Nisi vitae suscipit tellus mauris. Varius morbi enim nunc faucibus. Adipiscing at in tellus integer feugiat scelerisque varius morbi. Tellus id interdum velit laoreet id donec. ";

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('All Places'),
            ),
            body: ListView(
              children:  [
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
                CardPlace(
                  name: "Bahamas",
                  description: "Bahamas is a place",
                  urlImage: "assets/images/beach.jpeg",
                ),
                CardPlace(
                  name: "Bahamas",
                  description: "Bahamas is a place",
                  urlImage: "assets/images/beach.jpeg",
                ),
                CardPlace(
                  name: "Bahamas",
                  description: "Bahamas is a place",
                  urlImage: "assets/images/beach.jpeg",
                ),
                CardPlace(
                  name: "Bahamas",
                  description: "Bahamas is a place",
                  urlImage: "assets/images/beach.jpeg",
                ),
                CardPlace(
                  name: "Bahamas",
                  description: "Bahamas is a place",
                  urlImage: "assets/images/beach.jpeg",
                ),
              ],
            )));
  }
}