import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GreenButton extends StatefulWidget {
  final double height;
  final double width;
  final String text;

  // Function que hace como parametro
  final VoidCallback onPressed;
  const GreenButton({Key? key,
    required this.height,
    required this.width,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<GreenButton> createState() => _GreenButtonState();
}

class _GreenButtonState extends State<GreenButton> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // Generic button
      onTap: widget.onPressed ,
      child: Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20,
        ),
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: const LinearGradient(
            colors: [
              Color(0xFFa7ff84),
              Color(0xFF1cbb78)
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp
          ),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: const TextStyle(
              fontSize: 18.0,
              fontFamily: "Lato",
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
