import 'dart:io';

import 'package:favorite_places/place/ui/widgets/floating_action_button_green_like.dart';
import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  final String pathImage;
  final double height;
  final double width;
  final double leftMargin;
  final VoidCallback onPressedFabIcon;
  final IconData iconData;

  const CardImage({
    Key? key,
    required this.pathImage,
    required this.height,
    required this.width,
    required this.leftMargin,
    required this.onPressedFabIcon,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: height,
      width: width,
      margin:  EdgeInsets.only(
        left: leftMargin,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.file(File(pathImage)).image,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0),
          )
        ],
      ),
    );

    return Stack(
      alignment: const Alignment(0.9, 1.1),
      children: <Widget>[
        card,
         FloatingLikeButton(iconData: iconData, onPressed: onPressedFabIcon,),
      ],
    );
  }
}
