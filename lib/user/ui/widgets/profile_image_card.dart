import 'package:favorite_places/place/ui/widgets/floating_action_button_green_like.dart';
import 'package:flutter/material.dart';

class ProfileImageCard extends StatelessWidget {
  final String thisPath;
  final String name;
  final String description;
  final String steps;

  const ProfileImageCard({
    Key? key,
    required this.thisPath,
    required this.name,
    required this.description,
    required this.steps,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final finalImage = Container(
      height: 200.0,
      width: 380.0,
      margin: const EdgeInsets.only(
        top: 0.0,
        left: 20,
        right: 20,
        bottom: 100,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.asset(thisPath).image,
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
    final finalName = Row(children: [
      Container(
        width: 260,
        margin: const EdgeInsets.only(
          top: 10,
          left: 20.0,
          bottom: 10,
        ),
        child: Text(
          name,
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      )
    ]);
    final finalDescription = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
          ),
          width: 260,
          child: Text(
            overflow: TextOverflow.ellipsis,
            description,
            maxLines: 3,
            style: const TextStyle(
              fontSize: 15.0,
              fontFamily: "Lato",
              fontWeight: FontWeight.normal,
              color: Color(0xFF56575a),
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
    final finalStep = Row(children: [
      Container(
        width: 260,
        margin: const EdgeInsets.only(top: 10, left: 20.0),
        child: Text(
          steps,
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 20.0,
            fontWeight: FontWeight.w900,
            color: Colors.orange,
          ),
        ),
      )
    ]);

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        finalImage,
        Stack(
          alignment: const Alignment(0.9, 1.1),
          children: [
            Container(
              width: 300.0,
              height: 140.0,
              margin: const EdgeInsets.only(
                top: 140.0,
                left: 20,
                right: 20,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                shape: BoxShape.rectangle,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 15.0,
                    offset: Offset(0.0, 7.0),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  finalName,
                  finalDescription,
                  finalStep,
                ],
              ),
            ),
            const FloatingLikeButton(),
          ],
        )
      ],
    );
  }
}
