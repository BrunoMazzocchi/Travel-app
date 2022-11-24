import 'dart:io';

import 'package:favorite_places/place/ui/views/view_add_place.dart';
import 'package:favorite_places/user/bloc/bloc_user.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileActionButton extends StatefulWidget {
  const ProfileActionButton({Key? key}) : super(key: key);

  @override
  State<ProfileActionButton> createState() => _ProfileActionButtonState();
}

class _ProfileActionButtonState extends State<ProfileActionButton> {
  late UserBloc userBloc;
  bool add = false;
  bool mail = false;
  bool person = false;

  late String? pickedImage;

  Future<String?> getImagePath() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    return image?.path;
  }

  @override
  Widget build(BuildContext context) {
    userBloc = UserBloc();

    Icon passwordIcon = Icon(
      Icons.key,
      color: Colors.purple.shade300,
    );
    Icon addIcon = Icon(
      Icons.add,
      color: Colors.purple.shade300,
      size: 50,
    );
    Icon logOutIcon = Icon(
      Icons.logout,
      color: Colors.purple.shade300,
    );

    Future<File?> getImage() async {
      FilePickerResult? result = await FilePicker.platform.pickFiles();
      final String path;
      final File pickedImage;
      if (result != null) {
        path = result.files.single.path!;
        pickedImage = File(path);
      }
    }

    return Container(
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
              heroTag: null,
              child: passwordIcon,
            ),
            FloatingActionButton(
              onPressed: () {
                ImagePicker()
                    .pickImage(source: ImageSource.gallery, imageQuality: 50)
                    .then((value) => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      AddPlaceView(image: File(value!.path))
                              )).catchError((onError) => print(onError))
                        });
              },
              backgroundColor: Colors.white,
              mini: false,
              heroTag: null,
              child: addIcon,
            ),
            FloatingActionButton(
                onPressed: () => userBloc.signOut(),
                backgroundColor: Colors.white,
                mini: true,
                heroTag: null,
                child: logOutIcon),
          ],
        ));
  }
}
