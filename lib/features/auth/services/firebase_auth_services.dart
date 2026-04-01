import 'package:firebase_auth/firebase_auth.dart';

import '../data/models/user_data_class.dart';

class FirebaseAuthServices {
  static FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  static Future<UserCredential?> login(UserDataClass userData) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(
            email: userData.email,
            password: userData.password,
          );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      return null;
    } catch (e) {
      return null;
    }
  }

  static Future<UserCredential?> register(UserDataClass userData) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(
            email: userData.email,
            password: userData.password,
          );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      return null;
    } catch (e) {
      return null;
    }
  }
}
