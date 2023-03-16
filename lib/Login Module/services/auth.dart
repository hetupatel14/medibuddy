import 'package:firebase_auth/firebase_auth.dart';
import 'package:medibuddy/Login%20Module/models/user.dart';
import 'package:medibuddy/Patient%20module/services/patient_service.dart';

class AuthService {
  final FirebaseAuth _auth =
      FirebaseAuth.instance; //creates an instance of firebase auth

  //create object of type user from firebase user
  regUser? _regUserfromFirebaseUser(User? user) {
    if (user != null) {
      return regUser(uid: user.uid);
    } else {
      return null;
    }
  }

  //auth change user stream

  Stream<regUser?> get user {
    return _auth
        .authStateChanges()
        .map((User? user) => _regUserfromFirebaseUser(user));
  }

  //sign in anonymously
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _regUserfromFirebaseUser(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign in with email and password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      User? user = result.user;
      return _regUserfromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //register with email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      User? user = result.user;

      //create a new document for the user with uid
      await PatientService(uid: user?.uid)
          .updateUserData("Shreyans", "cough", "strepsils", "9428322809");
      return _regUserfromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
