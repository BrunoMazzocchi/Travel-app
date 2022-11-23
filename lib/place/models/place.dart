import 'package:flutter/material.dart';

import '../../user/models/user.dart';

class Place {
  String? uid;
  String name;
  String description;
  String uriImage;
  int likes;
  User? userOwner;

  Place(
 {
    Key? key,
     this.uid,
     required this.name,
     required this.description,
     required this.uriImage,
     required this.likes,
   this.userOwner,
  });
}
