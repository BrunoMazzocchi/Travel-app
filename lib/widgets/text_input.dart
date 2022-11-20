import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String hintText;
  final TextInputType inputType;
  final TextEditingController textEditingController;
  final int maxLines;

   const TextInput({
    Key? key,
    required this.hintText,
    required this.inputType,
    required this.textEditingController,
    required this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 20,
        left: 20,
      ),
      child: TextField(
        controller: textEditingController,
        keyboardType: inputType,
        maxLines: maxLines,
        style: const TextStyle(
          fontSize: 15,
          fontFamily: "Lato",
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFe5e5e5),
          border: InputBorder.none,
          hintText: hintText,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFe5e5e5),
            ),
            borderRadius: BorderRadius.all(Radius.circular(9.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFe5e5e5),
            ),
            borderRadius: BorderRadius.all(Radius.circular(9.0)),
          ),
        ),
      ),
    );
  }
}
