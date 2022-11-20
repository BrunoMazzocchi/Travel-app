import 'package:flutter/material.dart';

class TextInputLocation extends StatelessWidget {
  final String hintText;
  final TextEditingController textEditingController;
  final IconData iconData;

  const TextInputLocation({
    Key? key,
    required this.hintText,
    required this.textEditingController,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 20,
        left: 20,
      ),
      decoration: const BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 15.0,
            offset: Offset(0.0, 0.7),
          ),
        ],
      ),
      child: TextField(
        controller: textEditingController,
        style: const TextStyle(
          fontSize: 15,
          fontFamily: "Lato",
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: Icon(iconData),
          fillColor: const Color(0xFFFFFFFF),
          filled: true,
          border: InputBorder.none,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFFFFFFF),
            ),
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFFFFFFF),
            ),
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
          ),
        ),
      ),
    );
  }
}
