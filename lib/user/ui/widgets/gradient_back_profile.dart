import 'package:flutter/material.dart';

class GradientBackProfile extends StatelessWidget {
  const GradientBackProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.only(
        bottom: 15.0,
      ),
      height: screenHeight - 560,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            // Colores para el degrado de la imagen
            Color(0xFF4268D3),
            Color(0xFF584CD1),
          ],
          // Posición de los colores
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp,
        ),
      ),
      alignment: const Alignment(-0.9, -0.3),
      child: Stack(
        alignment: const Alignment(-0.9, -0.5),
        children: [
          const Text(
            "Profile",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontFamily: "Lato",
              fontWeight: FontWeight.bold,
            ),
          ),
          FittedBox(
            fit: BoxFit.none,
            alignment: const Alignment(-1.5, -0.8),
            child: Container(
              width: screenHeight,
              height: screenHeight,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(0, 0, 0, 0.05),
                borderRadius: BorderRadius.circular(screenHeight / 2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
