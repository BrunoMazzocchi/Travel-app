import 'package:favorite_places/widgets/floating_action_button_green_like.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var thisPath = "assets/images/beach.jpeg";
    return Container(
        child: Column(children: [
      Stack(
        alignment: Alignment.topCenter,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
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
              ),
              Container(
                  margin: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              top: 50,
                              right: 20.0,
                            ),
                            width: 65.0,
                            height: 65.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset("assets/images/avatar.jpg")
                                    .image,
                              ),
                              border: Border.all(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              top: 50,
                            ),
                            child: Column(
                              // Para centrar
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      'Master chetos',
                                      style: TextStyle(
                                        fontFamily: "Lato",
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'ilovecortana@email.com',
                                      style: TextStyle(
                                        fontFamily: "Lato",
                                        fontWeight: FontWeight.normal,
                                        fontSize: 17.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                          margin: const EdgeInsets.only(
                            top: 10.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FloatingActionButton(
                                onPressed: null,
                                backgroundColor: Colors.white,
                                mini: true,
                                child: Icon(
                                  Icons.bookmark,
                                  color: Colors.purple.shade300,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: null,
                                backgroundColor: Colors.white,
                                mini: true,
                                child: Icon(
                                  Icons.tv,
                                  color: Colors.purple.shade300,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: null,
                                backgroundColor: Colors.white,
                                mini: false,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.purple.shade300,
                                  size: 50,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: null,
                                backgroundColor: Colors.white,
                                mini: true,
                                child: Icon(
                                  Icons.mail,
                                  color: Colors.purple.shade300,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: null,
                                backgroundColor: Colors.white,
                                mini: true,
                                child: Icon(
                                  Icons.person,
                                  color: Colors.purple.shade300,
                                ),
                              ),
                            ],
                          )),
                    ],
                  )),
            ],
          ),
          Container(
              margin: const EdgeInsets.only(top: 250.0),
              height: 560,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
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
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0)),
                          shape: BoxShape.rectangle,
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 15.0,
                              offset: Offset(0.0, 7.0),
                            )
                          ],
                        ),
                      ),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
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
                                Row(children: [
                                  Container(
                                    width: 260,
                                    margin: const EdgeInsets.only(
                                        top: 10, left: 20.0),
                                    child: const Text(
                                      "Bahamas",
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontFamily: "Lato",
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                  )
                                ]),
                                Row(
                                  children: [
                                    Container (
                                      margin: const EdgeInsets.only(
                                        left: 20.0,
                                        right: 20.0,
                                      ),
                                      width: 260,
                                      child: const Text(
                                        overflow: TextOverflow.ellipsis,
                                        "Lorem description description description description description, description, description, description",
                                        maxLines: 2,
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontFamily: "Lato",
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xFF56575a),

                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(children: [
                                  Container(
                                    width: 260,
                                    margin: const EdgeInsets.only(
                                        top: 10, left: 20.0),
                                    child: const Text(
                                      "Steps 123,123 ",
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontFamily: "Lato",
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.orange,
                                      ),
                                    ),
                                  )
                                ]),
                              ],
                            ),
                          ),
                          const FloatingLikeButton(),
                        ],
                      )
                    ],
                  ),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
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
                            image: Image.asset("assets/images/mountain.jpeg").image,
                          ),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                          shape: BoxShape.rectangle,
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 15.0,
                              offset: Offset(0.0, 7.0),
                            )
                          ],
                        ),
                      ),
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
                              borderRadius:
                              BorderRadius.all(Radius.circular(10.0)),
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
                                Row(children: [
                                  Container(
                                    width: 260,
                                    margin: const EdgeInsets.only(
                                        top: 10, left: 20.0),
                                    child: const Text(
                                      "Bahamas",
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontFamily: "Lato",
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                  )
                                ]),
                                Row(
                                  children: [
                                    Container (
                                      margin: const EdgeInsets.only(
                                        left: 20.0,
                                        right: 20.0,
                                      ),
                                      width: 260,
                                      child: const Text(
                                        overflow: TextOverflow.ellipsis,
                                        "Lorem description description description description description, description, description, description",
                                        maxLines: 2,
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontFamily: "Lato",
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xFF56575a),

                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(children: [
                                  Container(
                                    width: 260,
                                    margin: const EdgeInsets.only(
                                        top: 10, left: 20.0),
                                    child: const Text(
                                      "Steps 123,123 ",
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontFamily: "Lato",
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.orange,
                                      ),
                                    ),
                                  )
                                ]),
                              ],
                            ),
                          ),
                          const FloatingLikeButton(),
                        ],
                      )
                    ],
                  ),
                ],
              ))
        ],
      )
    ]));
  }
}
