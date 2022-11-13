import 'package:favorite_places/views/navigation.dart';
import 'package:favorite_places/views/popular_place.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants/routes.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Navigation()
    );
  }
}


