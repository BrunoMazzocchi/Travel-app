import 'package:favorite_places/user/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

import '../repository/cloud_firestore_repository.dart';

class UserBloc implements Bloc {
  final authRepository = AuthRepository();

  // Flujo de datos
  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User?> get authStatus => streamFirebase;

  // 1. SignIn con Google
  Future<User?> signIn() {
    return authRepository.signInFirebase();
  }

  signOut() {
    authRepository.signOutFirebase();
  }

  // 2. Registrar en firebase
  final cloudFirestoreRepository = CloudFirestoreRepository();

  void updateUserData(model) =>
      cloudFirestoreRepository.updateUserDataFirestore(model);

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
