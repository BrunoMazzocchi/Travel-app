import 'package:favorite_places/user/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class UserBloc implements Bloc {
  final authRepository = AuthRepository();

  // Flujo de datos
  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User?> get authStatus => streamFirebase;

  // 1. SignIn con Google
  Future<User?> signIn(){
    return authRepository.signInFirebase();
  }

  signOut()  {
    authRepository.signOutFirebase();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

}