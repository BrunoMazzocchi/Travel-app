import 'package:favorite_places/views/description_place.dart';
import 'package:favorite_places/views/gradient_back.dart';
import 'package:favorite_places/views/review_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var descriptionDummy =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget aliquet nibh praesent tristique magna sit amet purus gravida. \n\nIn iaculis nunc sed augue lacus viverra vitae congue. Eget duis at tellus at. Nisi vitae suscipit tellus mauris. Varius morbi enim nunc faucibus. Adipiscing at in tellus integer feugiat scelerisque varius morbi. Tellus id interdum velit laoreet id donec. ";
    var titleDummy = "Bahamas";
    var stars = 2;

    return MaterialApp(
        home: Scaffold(
      // Permite que el texto description se oculte bajo el gradiente
      body: Stack(children: [
        ListView(
          children: [
            DescriptionPlace(
              namePlace: titleDummy,
              stars: stars,
              descriptionPlace: descriptionDummy,
            ),
            const ReviewList(),
          ],
        ),
        const GradientBack(title: 'Popular',),
      ]),
    ));
  }
}
