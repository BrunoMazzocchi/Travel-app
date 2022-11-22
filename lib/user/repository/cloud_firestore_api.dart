// Logica para guardar una entidad
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../place/models/place.dart';
import '../models/user.dart';

class CloudFirestoreAPI {
  final String users = "users";
  final String places = "places";
  final FirebaseFirestore db = FirebaseFirestore.instance;
  final FirebaseAuth auth = FirebaseAuth.instance;

  void updateUserData(user) async {
    DocumentReference ref = db.collection(users).doc(user.uid);
    return await ref.set(
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

  Future<void> updatePlaceData(Place place) async {
    CollectionReference refPlaces = db.collection(places);
      await refPlaces.add({
        'name': place.name,
        'description': place.description,
        'likes': place.likes,
        'userOwner': "$users/${auth.currentUser?.uid}",
        'uriImage': place.uriImage,
      });
  }
}



