import 'package:favorite_places/widgets/card_image.dart';
import 'package:favorite_places/widgets/card_image_list.dart';
import 'package:favorite_places/widgets/header_app_bar.dart';
import 'package:favorite_places/widgets/review_list.dart';
import 'package:favorite_places/widgets/description_place.dart';
import 'package:favorite_places/widgets/gradient_back.dart';
import 'package:favorite_places/widgets/review_list.dart';
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
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
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
        const HeaderAppBar(),
      ]),
    ));
  }
}
