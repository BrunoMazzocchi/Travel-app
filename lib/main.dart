import 'package:favorite_places/views/description_place.dart';
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

    var pathImage = "assets/images/avatar.jpg";
    var name = "Master Chetos";
    var comments = "There is an amazing place in Sri Lanka";

    var details = "1 review 5 photos";
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              systemOverlayStyle: const SystemUiOverlayStyle(
                  statusBarColor: Colors.transparent),
              backgroundColor: Colors.blue,
              title: const Text('Description places'),
            ),
            body: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    DescriptionPlace(
                      namePlace: titleDummy,
                      stars: stars,
                      descriptionPlace: descriptionDummy,
                    ),
                    const ReviewList(),
                  ],
                ),
              ),
            )));
  }
}
