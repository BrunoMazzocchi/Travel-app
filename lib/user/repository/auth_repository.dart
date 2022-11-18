import 'package:favorite_places/user/repository/firebase_auth_api.dart';
import 'package:firebase_auth/firebase_auth.dart';


// Implementacion de FirebaseAuthAPI
class AuthRepository {
  final _firebaseAuthAPI = FirebaseAuthAPI();
  Future<User?> signInFirebase() => _firebaseAuthAPI.signIn();
  signOutFirebase() => _firebaseAuthAPI.signOut();
}