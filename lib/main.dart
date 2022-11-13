import 'package:favorite_places/views/popular_place.dart';
import 'package:favorite_places/views/view_all_places.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants/routes.dart';

void main() {
  runApp(
     MaterialApp(
      title: "Favorite Places",
      home: const PopularPlace(),
      routes: {
        placeRoute: (context) => const PopularPlace(),
      },
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return const PopularPlace();
  }
}

