import 'package:favorite_places/user/bloc/bloc_user.dart';
import 'package:favorite_places/user/ui/widgets/profile_card_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

import '../../models/user.dart';
import '../widgets/gradient_back_profile.dart';
import '../widgets/profile_info.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserBloc userBloc  = UserBloc();
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
        );

        return Column(children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  const GradietBackProfile(),
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
              return const CircularProgressIndicator();
              break;
            case ConnectionState.waiting:
              return const CircularProgressIndicator();
              break;
            case ConnectionState.active:
              return showProfileData (snapshot);
              break;
            case ConnectionState.done:
              return showProfileData (snapshot);
              break;
          }
        });


    return data;
  }

}
