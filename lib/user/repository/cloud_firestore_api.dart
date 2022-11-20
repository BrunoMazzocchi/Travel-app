// Logica para guardar una entidad
import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/user.dart';

class CloudFirestoreAPI {
  final String users = "users";
  final String place = "places";

  final FirebaseFirestore db = FirebaseFirestore.instance;

  void updateUserData(User user) async {
    DocumentReference ref = db.collection(users).doc(user.uid);
    return ref.set(
      {
        'uid': user.uid,
        'name': user.name,
        'email': user.email,
        'photoUrl': user.photoUrl,
        'myPlaces': user.myPlaces,
        'myLikedPlaces': user.myLikedPlaces,
        'lastSignIn': DateTime.now(),
      },
      SetOptions(merge: true),
    );
  }
}
