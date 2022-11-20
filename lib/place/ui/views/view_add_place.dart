import 'package:favorite_places/widgets/button_purple.dart';
import 'package:favorite_places/widgets/gradient_back.dart';
import 'package:favorite_places/widgets/text_input.dart';
import 'package:favorite_places/widgets/title_header.dart';
import 'package:flutter/material.dart';

import '../widgets/card_image.dart';
import '../widgets/title_input_location.dart';

class AddPlaceView extends StatefulWidget {
  const AddPlaceView({
    Key? key,
  }) : super(key: key);

  @override
  State<AddPlaceView> createState() => _AddPlaceViewState();
}

class _AddPlaceViewState extends State<AddPlaceView> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final controllerTitlePlace = TextEditingController();
    final controllerDescriptionPlace = TextEditingController();
    final controllerLocationPlace = TextEditingController();
    return Scaffold(
        body: Stack(
      children: [
        const GradientBack(gradientHeight: 300, title: ""),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 25,
                left: 5,
              ),
              child: SizedBox(
                width: 45,
                height: 45,
                child: IconButton(
                  icon: const Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.white,
                    size: 45,
                  ),
                  onPressed: Navigator.of(context).pop,
                ),
              ),
            ),
            Flexible(
                child: Container(
              width: screenWidth,
              padding: const EdgeInsets.only(
                top: 45,
                left: 20,
                right: 10,
              ),
              child: const TitleHeader(
                title: "Add a new Place",
              ),
            )),
          ],
        ),
        Container(
            margin: const EdgeInsets.only(
              top: 120,
              bottom: 20,
            ),
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.center,

                  //Foto
                  child: CardImage(
                    pathImage: 'assets/images/beach.jpeg',
                    height: 200,
                    width: 300,
                    leftMargin: 0,
                    onPressedFabIcon: () {},
                    iconData: Icons.camera_alt_outlined,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 40,
                    bottom: 20,
                  ),
                  child: TextInput(
                    hintText: 'Title',
                    inputType: TextInputType.text,
                    textEditingController: controllerTitlePlace,
                    maxLines: 1,
                  ),
                ),
                TextInput(
                  hintText: 'Description',
                  inputType: TextInputType.multiline,
                  maxLines: 4,
                  textEditingController: controllerDescriptionPlace,
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: TextInputLocation(
                    hintText: 'Location',
                    textEditingController: controllerLocationPlace,
                    iconData: Icons.location_on,
                  ),
                ),
                SizedBox(
                  width: 70,
                  child: ButtonPurple(
                    buttonText: 'Add Place',
                    onPressed: () {
                      //Upload image in Firestore
                      //Cloud Firestore to insert the place
                    },
                  ),
                )
              ],
            ))
      ],
    ));
  }
}
