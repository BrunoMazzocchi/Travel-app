import 'package:favorite_places/user/repository/cloud_firestore_api.dart';

import '../models/user.dart';

class CloudFirestoreRepository {
  final cloudFirestoreAPI = CloudFirestoreAPI();
  void updateUserDataFirestore(User user) =>
      cloudFirestoreAPI.updateUserData(user);
}
