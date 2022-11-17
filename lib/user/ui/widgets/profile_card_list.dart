import 'package:favorite_places/user/ui/widgets/profile_image_card.dart';
import 'package:flutter/cupertino.dart';

class ProfileCardList extends StatelessWidget {
  const ProfileCardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    var descriptionDummy =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget aliquet nibh praesent tristique magna sit amet purus gravida. "
        "In iaculis nunc sed augue lacus viverra vitae congue. Eget duis at tellus at. Nisi vitae suscipit tellus mauris. Varius morbi enim nunc faucibus. Adipiscing at in tellus integer feugiat scelerisque varius morbi. Tellus id interdum velit laoreet id donec. ";

    return Container(
        margin: const EdgeInsets.only(top: 250.0),
        height: queryData.size.height - 315,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            ProfileImageCard(
              thisPath: "assets/images/beach.jpeg",
              name: "Bahamas",
              description: descriptionDummy,
              steps: "123,123",
            ),
            ProfileImageCard(
              thisPath: "assets/images/mountain.jpeg",
              name: "Mountain",
              description: descriptionDummy,
              steps: "123,123",
            ),
            ProfileImageCard(
              thisPath: "assets/images/sunset.jpeg",
              name: "Sunset",
              description: descriptionDummy,
              steps: "123,123",
            ),
            ProfileImageCard(
              thisPath: "assets/images/mountain_stars.jpeg",
              name: "Mountain Stars",
              description: descriptionDummy,
              steps: "123,123",
            ),
          ],
        ));
  }
}
