import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  final String name;
  final String pathImage;
  final String details;
  final String comment;
  final int stars;

  const Review({
    Key? key,
    required this.name,
    required this.pathImage,
    required this.details,
    required this.comment,
    required this.stars,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: const EdgeInsets.only(
        top: 2.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: 10.0
      ),
    );

    final starInComment = Row(
      children: [
        for (var i = 0; i < stars; i++) star,
      ],
    );

    final userName = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
        ),
      ),
    );

    final userInfo = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 20.0,
          ),
          child: Text(
            details,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 13.0,
              color: Color(0xFFa3a5a7),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 5.0,
          ),
          child: starInComment,
        ),
      ],
    );



    final userComment =
        Container(
          margin: const EdgeInsets.only(
            left: 20.0,
          ),
          child: Text(
            comment,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 13.0,
              fontWeight: FontWeight.w900,
            ),
          ),
        );


    final userDetails = Column(
      // Para centrar
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [userName, userInfo, userComment],
    );
    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.asset(pathImage).image,
        ),
      ),
    );
    return Row(
      children: [photo, userDetails],
    );
  }
}
