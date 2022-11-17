import 'package:favorite_places/navigation.dart';
import 'package:favorite_places/place/ui/views/view_popular_place.dart';
import 'package:favorite_places/user/ui/views/view_signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'constants/routes.dart';
import 'user/bloc/bloc_user.dart';

void main() {
  runApp(
    MaterialApp(
      home: const SignInView(),
      routes: {
        placeRoute: (context) => const PopularPlace(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    return BlocProvider(
      bloc: UserBloc(),
      child: const MaterialApp(
        title: "Flutter",
        home: SignInView(),
      ));
  }
}
