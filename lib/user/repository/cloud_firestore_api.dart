// Logica para guardar una entidad
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:favorite_places/user/ui/widgets/profile_image_card.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../place/models/place.dart';

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
    var user = auth.currentUser;
    await refPlaces.add({
      'name': place.name,
      'description': place.description,
      'likes': place.likes,
      'userOwner': db.doc("$users/${auth.currentUser?.uid}"),
      'uriImage': place.uriImage,
    }).then((DocumentReference dr) {
      dr.get().then((DocumentSnapshot snapshot) {
        snapshot.id;
        DocumentReference refUsers = db.collection(users).doc(user?.uid);
        refUsers.update({
          'myPlaces': FieldValue.arrayUnion([db.doc("$places/${snapshot.id}")])
        });
      });
    });
  }

  // Obtiene los datos
  List<ProfileImageCard> buildPlaces(
      List<DocumentSnapshot> placesListSnapshot) {
    List<ProfileImageCard> placeList = <ProfileImageCard>[];
    for (var place in placesListSnapshot) {
      placeList.add(ProfileImageCard(
        place: Place(
          name: place['name'],
          description: place['description'],
          uriImage: place['uriImage'],
          likes: place['likes'],
        ),
      ));
    }
    return placeList;
  }
}
