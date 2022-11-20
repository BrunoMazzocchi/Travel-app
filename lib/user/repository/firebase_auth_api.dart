import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthAPI {
  // Obtiene los datos de las respectivas librerias
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  // Devuelve un Future
  Future<User?> signIn() async {
    GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication? gSA = await googleSignInAccount?.authentication;

    final OAuthCredential credential = GoogleAuthProvider.credential(
        idToken: gSA?.idToken, accessToken: gSA?.accessToken);

    final UserCredential authResult =
        await _auth.signInWithCredential(credential);
    final User? user = authResult.user;

    return user;
  }

  signOut() async {
    await _auth.signOut();
    googleSignIn.signOut();
  }
}
