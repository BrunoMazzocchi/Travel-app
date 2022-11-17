import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FloatingLikeButton extends StatefulWidget {
  const FloatingLikeButton({Key? key}) : super(key: key);

  @override
  State<FloatingLikeButton> createState() => _FloatingLikeButtonState();
}

class _FloatingLikeButtonState extends State<FloatingLikeButton> {
  bool _isFav = false;

  void onPressedFav() {
    setState(() {
      _isFav = !_isFav;
    });
  }

  @override
  Widget build(BuildContext context) {
    Icon icon = const Icon(Icons.favorite_border);
    Icon likedIcon = const Icon(Icons.favorite);

    if (_isFav) {
      icon = likedIcon;
    }

    return FloatingActionButton(
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: "Like",
      heroTag: null,
      onPressed: onPressedFav,
      child: icon,
    );
  }
}
