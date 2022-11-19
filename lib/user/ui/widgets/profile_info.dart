import 'package:favorite_places/user/ui/widgets/profile_button_action.dart';
import 'package:flutter/material.dart';
import '../../models/user.dart';

class ProfileInformation extends StatefulWidget {
  final User user;

  const ProfileInformation({
    required this.user,
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileInformation> createState() => _ProfileInformationState();
}

class _ProfileInformationState extends State<ProfileInformation> {
  @override
  Widget build(BuildContext context) {
    final image = Container(
      margin: const EdgeInsets.only(
        top: 50,
        right: 10.0,
      ),
      width: 65.0,
      height: 65.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image:NetworkImage(widget.user.photoUrl),
        ),
        border: Border.all(
          color: Colors.white,
          width: 1.0,
        ),
      ),
    );
    final userInfo = Container(
      margin: const EdgeInsets.only(
        top: 50,
      ),
      child: Column(
        // Para centrar
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                widget.user.name,
                style: const TextStyle(
                  fontFamily: "Lato",
                  fontSize: 14.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                widget.user.email,
                style: const TextStyle(
                  fontFamily: "Lato",
                  fontWeight: FontWeight.normal,
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
    final userHeader = Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                image,
                userInfo,
              ],
            ),
            const ProfileActionButton(),
          ],
        ));

    return userHeader;
  }
}
