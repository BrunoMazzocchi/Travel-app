import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/description_place.dart';
import '../widgets/header_app_bar.dart';
import '../widgets/review_list.dart';

class PopularPlace extends StatelessWidget {
  const PopularPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var descriptionDummy =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget aliquet nibh praesent tristique magna sit amet purus gravida. \n\nIn iaculis nunc sed augue lacus viverra vitae congue. Eget duis at tellus at. Nisi vitae suscipit tellus mauris. Varius morbi enim nunc faucibus. Adipiscing at in tellus integer feugiat scelerisque varius morbi. Tellus id interdum velit laoreet id donec. ";
    var titleDummy = "Bahamas";
    var stars = 2;


    return Stack(children: [
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
          ]);
  }
}
