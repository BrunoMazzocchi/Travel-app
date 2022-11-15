import 'package:favorite_places/widgets/main_place_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/gradient_back.dart';

class AllPlaces extends StatelessWidget {
  const AllPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
    ));
    return MaterialApp(
        home: Scaffold(
            body: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            const GradientBack(
              title: "Places",
              gradientHeight: 200,
            ),
            Container(
              margin: const EdgeInsets.only(top: 50.0),
              height: queryData.size.height - 106,
              width: 600,
              child: const MainPlaceList(),
            )
          ],
        )
      ],
    )));
  }
}
