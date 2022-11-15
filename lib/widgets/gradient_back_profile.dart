import 'package:flutter/material.dart';

class GradietBackProfile extends StatelessWidget {
  const GradietBackProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
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
      alignment: const Alignment(-0.9, -0.6),
      child: const Text(
        "Profile",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}