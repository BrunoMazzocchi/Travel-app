import 'dart:io';

import 'package:favorite_places/widgets/gradient_back.dart';
import 'package:flutter/material.dart';

class AddPlaceView extends StatefulWidget {

  const AddPlaceView({
    Key? key,
  }) : super(key: key);

  @override
  State<AddPlaceView> createState() => _AddPlaceViewState();
}

class _AddPlaceViewState extends State<AddPlaceView> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
        body: Stack(
      children: [
        const GradientBack(gradientHeight: 300, title: ""),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 25,
                left: 5,
              ),
              child:  SizedBox(
                width: 45,
                height: 45,
                child: IconButton(
                  icon:  const Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.white,
                    size: 45,
                  ),
                  onPressed: Navigator.of(context).pop,
                ),
              ),
            )
          ],
        )
      ],
    ));
  }
}
