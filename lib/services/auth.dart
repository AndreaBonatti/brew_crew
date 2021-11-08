import 'package:brew_crew/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // _nome -> nome private
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Create a user object based on FirebaseUser
  MyUser? _userFromFireBaseUser(User user){
    return user != null ? MyUser(user.uid) : null;
  }
  
  // Sign in anonymously
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFireBaseUser(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

// Sign in with email & password

// Register with email & password

// Sign out

}
