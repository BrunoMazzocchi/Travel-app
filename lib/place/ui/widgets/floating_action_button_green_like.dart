import 'package:flutter/material.dart';

class FloatingLikeButton extends StatefulWidget {

  final IconData iconData;
  final VoidCallback onPressed;

  const FloatingLikeButton({
    Key? key,
    required this.iconData,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<FloatingLikeButton> createState() => _FloatingLikeButtonState();
}

class _FloatingLikeButtonState extends State<FloatingLikeButton> {

  @override
  Widget build(BuildContext context) {
    Icon icon =  Icon(widget.iconData);


    return FloatingActionButton(
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: "Icon",
      heroTag: null,
      onPressed: widget.onPressed,
      child: icon,
    );
  }
}
