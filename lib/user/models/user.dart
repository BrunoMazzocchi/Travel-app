import 'package:flutter/cupertino.dart';

import '../../place/models/place.dart';

class User {
  String uid;
  final String name;
  final String email;
  final String photoUrl;
  List<Place> myPlaces;
  List<Place> myLikedPlaces;

  User({
    Key? key,
    required this.myPlaces,
    required this.myLikedPlaces,
    required this.uid,
    required this.name,
    required this.email,
    required this.photoUrl,
  });
}
