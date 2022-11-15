import 'package:favorite_places/widgets/profile_card_list.dart';
import 'package:favorite_places/widgets/profile_image_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/gradient_back_profile.dart';
import '../widgets/profile_info.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
    alignment: Alignment.topCenter,
    children: [
      Stack(
        alignment: AlignmentDirectional.center,
        children: const [
          GradietBackProfile(),
          ProfileInformation(),
        ],
      ),
      const ProfileCardList(),
    ],
      )
    ]);
  }
}
