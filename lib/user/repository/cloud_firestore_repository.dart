import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:favorite_places/user/repository/cloud_firestore_api.dart';

import '../../place/models/place.dart';
import '../models/user.dart';
import '../ui/widgets/profile_image_card.dart';

class CloudFirestoreRepository {
  final cloudFirestoreAPI = CloudFirestoreAPI();

  void updateUserDataFirestore(User user) =>
      cloudFirestoreAPI.updateUserData(user);

  Future<void> updatePlaceDate(Place place) =>
      cloudFirestoreAPI.updatePlaceData(place);

  List<ProfileImageCard> buildPlaces(
      List<DocumentSnapshot> placesListSnapshot) => cloudFirestoreAPI.buildPlaces(placesListSnapshot);
}
