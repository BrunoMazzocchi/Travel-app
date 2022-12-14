import 'package:favorite_places/user/bloc/bloc_user.dart';
import 'package:favorite_places/user/models/user.dart' as model;
import 'package:favorite_places/widgets/green_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../navigation.dart';
import '../../../widgets/gradient_back.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  late UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = UserBloc();
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    Widget signInWithGoogle = Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        GradientBack(gradientHeight: queryData.size.height, title: ""),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
                "Welcome \n"
                " This is your Travel App ",
                style: TextStyle(
                    fontSize: 37.0,
                    fontFamily: "Lato",
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            GreenButton(
              height: 60,
              width: 300,
              text: "Login with Gmail",
              onPressed: () {
                userBloc
                    .signIn()
                    .then((User? user) => userBloc.updateUserData(model.User(
                          uid: user!.uid,
                          myLikedPlaces: [],
                          myPlaces: [],
                          name: user.displayName.toString(),
                          email: user.email.toString(),
                          photoUrl: user.photoURL.toString(),
                        )));
              },
            )
          ],
        ),
      ],
    ));

    Widget handleCurrentSession() {
      return StreamBuilder<User?>(
        //Datos que recibe
        stream: userBloc.authStatus,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData || snapshot.hasError) {
            return signInWithGoogle;
          } else {
            return const Navigation();
          }
        },
      );
    }

    return handleCurrentSession();
  }
}
