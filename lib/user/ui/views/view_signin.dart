import 'package:favorite_places/widgets/green_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../widgets/gradient_back.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        GradientBack(gradientHeight: queryData.size.height, title: ""),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
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
              onPressed: (){},
            )
          ],
        ),
      ],
    ));
  }
}
