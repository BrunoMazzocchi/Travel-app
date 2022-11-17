import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileActionButton extends StatefulWidget {
  const ProfileActionButton({Key? key}) : super(key: key);

  @override
  State<ProfileActionButton> createState() => _ProfileActionButtonState();
}

class _ProfileActionButtonState extends State<ProfileActionButton> {
  bool bookMark = false;
  bool tv = false;
  bool add = false;
  bool mail = false;
  bool person = false;

  onBookMarkPressed() {
    setState(() {
      bookMark = !bookMark;
    });
  }

  onTvPressed(){
    setState(() {
      tv = !tv;
    });
  }

  onAddPressed(){
    setState(() {
      add = !add;
    });
  }

  onMailPressed(){
    setState(() {
      mail = !mail;
    });
  }

  onPersonPressed(){
    setState(() {
      person = !person;
    });
  }

  @override
  Widget build(BuildContext context) {
    Icon isNotBookMark = Icon(
      Icons.bookmark_outline,
      color: Colors.purple.shade300,
    );

    Icon iBookMark = Icon(
      Icons.bookmark,
      color: Colors.purple.shade300,
    );

    Icon iTv = Icon(
      Icons.tv,
      color: Colors.purple.shade300,
    );
    Icon isNotTv = Icon(
      Icons.tv_off,
      color: Colors.purple.shade300,
    );

    Icon iAdd = Icon(
      Icons.add,
      color: Colors.purple.shade300,
      size: 50,
    );
    Icon isNotAdd = Icon(
      Icons.add_outlined,
      color: Colors.purple.shade300,
      size: 50,
    );

    Icon iMail = Icon(
      Icons.mail,
      color: Colors.purple.shade300,
    );
    Icon isNotMail = Icon(
      Icons.mail_outline,
      color: Colors.purple.shade300,
    );

    Icon iPerson = Icon(
      Icons.person,
      color: Colors.purple.shade300,
    );

    Icon isNotPerson = Icon(
      Icons.person_outline,
      color: Colors.purple.shade300,
    );

    if (bookMark) isNotBookMark = iBookMark;
    if (tv) isNotTv = iTv;
    if (add) isNotAdd = iAdd;
    if (mail) isNotMail = iMail;
    if (person) isNotPerson = iPerson;

    return Container(
        margin: const EdgeInsets.only(
          top: 10.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: onBookMarkPressed,
              backgroundColor: Colors.white,
              mini: true,
              child: isNotBookMark,
            ),
            FloatingActionButton(
              onPressed: onTvPressed,
              backgroundColor: Colors.white,
              mini: true,
              child: isNotTv,
            ),
            FloatingActionButton(
              onPressed: onAddPressed,
              backgroundColor: Colors.white,
              mini: false,
              child: isNotAdd,
            ),
            FloatingActionButton(
              onPressed: onMailPressed,
              backgroundColor: Colors.white,
              mini: true,
              child: isNotMail,
            ),
            FloatingActionButton(
              onPressed: onPersonPressed,
              backgroundColor: Colors.white,
              mini: true,
              child: isNotPerson
            ),
          ],
        ));
  }
}
