import 'package:favorite_places/widgets/profile_button_action.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileInformation extends StatefulWidget {
  const ProfileInformation({Key? key}) : super(key: key);

  @override
  State<ProfileInformation> createState() => _ProfileInformationState();
}

class _ProfileInformationState extends State<ProfileInformation> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                      image: Image.asset("assets/images/avatar.jpg").image,
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
            const ProfileActionButton(),
          ],
        ));
  }
}
