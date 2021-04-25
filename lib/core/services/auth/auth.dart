import 'package:firebase_auth/firebase_auth.dart';
import 'package:istinye_mobil/UI/model/user.dart';

class AuthServices {
  // sign in anony

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Users _takeAnParamaterFromUser(User user) {
    return user != null ? Users(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<Users> get usert {
    return _auth
        .authStateChanges()
        //.map((FirebaseUser user) => _userFromFirebaseUser(user));
        .map(_takeAnParamaterFromUser);
  }

  Future signInAnony() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return _takeAnParamaterFromUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in e mail and pasawword
  Future signInwithemailandpassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return _takeAnParamaterFromUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // register e mail and pasawword
  Future registerwithemailandpassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return _takeAnParamaterFromUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign out

  Future signOutt() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
