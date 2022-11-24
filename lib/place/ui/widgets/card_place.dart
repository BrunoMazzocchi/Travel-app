import 'package:favorite_places/place/ui/views/view_popular_place.dart';
import 'package:flutter/material.dart';

class CardPlace extends StatelessWidget {
  final String name;
  final String description;
  final String urlImage;

  const CardPlace({
    Key? key,
    required this.name,
    required this.description,
    required this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 140,
        margin: const EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0,
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
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const PopularPlace()));
          },
          child: Row(
            children: [
              const SizedBox(
                height: 80.0,
              ),
              Container(
                margin: const EdgeInsets.only(right: 10, left: 10),
                height: 120.0,
                width: 120.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(urlImage).image,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Row(
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                  ),
                  Row(children: [
                    SizedBox(
                      width: 200.0,
                      child: Text(
                        description,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        style: const TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF56575a),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ])
                ],
              )
            ],
          ),
        ));
  }
}
