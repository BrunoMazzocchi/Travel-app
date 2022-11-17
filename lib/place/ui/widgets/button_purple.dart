import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {
  final String buttonText;

  const ButtonPurple({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        child: InkWell(
            onTap: () {
              heroTag: 'buttonPurple';
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Navegando'),
                ),
              );
            },
            child: Container(
              height: 50,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF4268D3),
                      Color(0xFF584CD1),
                    ],
                    begin: FractionalOffset(0.2, 0.0),
                    end: FractionalOffset(1.0, 0.6),
                  )),
              child: Center(
                child: Text(
                  buttonText,
                  style: const TextStyle(
                    fontSize: 18,
                    fontFamily: "Lato",
                    color: Colors.white,
                  ),
                ),
              ),
            )));
  }
}
