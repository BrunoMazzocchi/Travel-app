import 'package:favorite_places/place/ui/views/view_popular_place.dart';
import 'package:favorite_places/user/ui/views/view_signin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

import 'constants/routes.dart';
import 'firebase_options.dart';
import 'user/bloc/bloc_user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: UserBloc(),
      child: const SignInView(),
    );
  }
}
