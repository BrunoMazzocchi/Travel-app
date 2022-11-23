import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:favorite_places/place/repository/firebase_storage_repository.dart';
import 'package:favorite_places/user/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

import '../../place/models/place.dart';
import '../repository/cloud_firestore_api.dart';
import '../repository/cloud_firestore_repository.dart';
import '../ui/widgets/profile_image_card.dart';

class UserBloc implements Bloc {
  final authRepository = AuthRepository();

  // Flujo de datos
  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();

  Stream<User?> get authStatus => streamFirebase;

  User? get currentUser => FirebaseAuth.instance.currentUser;

  // 1. SignIn con Google
  Future<User?> signIn() => authRepository.signInFirebase();

  signOut() => authRepository.signOutFirebase();

  Future<void> updatePlaceDate(Place place) =>
      cloudFirestoreRepository.updatePlaceDate(place);

  // 2. Registrar en firebase
  final cloudFirestoreRepository = CloudFirestoreRepository();

  void updateUserData(model) =>
      cloudFirestoreRepository.updateUserDataFirestore(model);

  //Actualizar UI cuando se registren los datos nuevos.
  Stream<QuerySnapshot> placesListStream = FirebaseFirestore.instance
      .collection(CloudFirestoreAPI().places)
      .snapshots();

  Stream<QuerySnapshot> get placesStream => placesListStream;

  List<ProfileImageCard> buildPlaces(
          List<DocumentSnapshot> placesListSnapshot) =>
      cloudFirestoreRepository.buildPlaces(placesListSnapshot);

  // 3. Para subir la imagen a firebase
  final FirebaseStorageRepository firebaseStorageRepository =
      FirebaseStorageRepository();

  Future<UploadTask> uploadFile(String path, File image) =>
      firebaseStorageRepository.uploadFile(path, image);

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
