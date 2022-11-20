import 'dart:io';

import 'package:favorite_places/place/ui/views/view_add_place.dart';
import 'package:favorite_places/user/bloc/bloc_user.dart';
import 'package:flutter/material.dart';

import '../../../place/ui/views/view_popular_place.dart';

class ProfileActionButton extends StatefulWidget {
  const ProfileActionButton({Key? key}) : super(key: key);

  @override
  State<ProfileActionButton> createState() => _ProfileActionButtonState();
}

class _ProfileActionButtonState extends State<ProfileActionButton> {
  late UserBloc userBloc;
  late File image;
  bool add = false;
  bool mail = false;
  bool person = false;

  @override
  Widget build(BuildContext context) {
    userBloc = UserBloc();

    Icon passwordIcon = Icon(
      Icons.key,
      color: Colors.purple.shade300,
    );
    Icon addIcon = Icon(
      Icons.add,
      color: Colors.purple.shade300,
      size: 50,
    );
    Icon logOutIcon = Icon(
      Icons.logout,
      color: Colors.purple.shade300,
    );

    return Container(
        margin: const EdgeInsets.only(
          top: 10.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: null,
              backgroundColor: Colors.white,
              mini: true,
              heroTag: null,
              child: passwordIcon,
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AddPlaceView()));
              },
              backgroundColor: Colors.white,
              mini: false,
              heroTag: null,
              child: addIcon,
            ),
            FloatingActionButton(
                onPressed: () => userBloc.signOut(),
                backgroundColor: Colors.white,
                mini: true,
                heroTag: null,
                child: logOutIcon),
          ],
        ));
  }
}
