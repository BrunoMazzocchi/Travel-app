import 'package:favorite_places/user/bloc/bloc_user.dart';
import 'package:favorite_places/user/ui/widgets/profile_card_list.dart';
import 'package:flutter/material.dart';

import '../../models/user.dart';
import '../widgets/gradient_back_profile.dart';
import '../widgets/profile_info.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserBloc userBloc = UserBloc();
    Widget showProfileData(AsyncSnapshot snapshot) {
      if (!snapshot.hasData || snapshot.hasError) {
        return Container(
          margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
          child: Column(
            children: const <Widget>[
              CircularProgressIndicator(),
              Text("No se pudo cargar la información. Haz login")
            ],
          ),
        );
      } else {
        User user = User(
          name: snapshot.data.displayName,
          email: snapshot.data.email,
          photoUrl: snapshot.data.photoURL,
          myPlaces: [],
          uid: '',
          myLikedPlaces: [],
        );

        return Column(children: [
          Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  const GradientBackProfile(),
                  ProfileInformation(
                    user: user,
                  ),
                ],
              ),
              const ProfileCardList(),
            ],
          )
        ]);
      }
    }

    final data = StreamBuilder(
        stream: userBloc.streamFirebase,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return const CircularProgressIndicator();
            case ConnectionState.active:
              return showProfileData(snapshot);
            case ConnectionState.done:
              return showProfileData(snapshot);
          }
        });

    return data;
  }
}
