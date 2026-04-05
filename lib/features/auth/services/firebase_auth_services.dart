import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../data/models/user_data_class.dart';

class FirebaseAuthServices {
  static final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  static Future<void> login(UserDataClass userData) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: userData.email,
        password: userData.password,
      );
    } on FirebaseAuthException catch (e) {
      throw Exception(_handleAuthError(e));
    } catch (e) {
      throw Exception("Something went wrong");
    }
  }

  static Future<void> register(UserDataClass userData) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: userData.email,
        password: userData.password,
      );
    } on FirebaseAuthException catch (e) {
      throw Exception(_handleAuthError(e));
    } catch (e) {
      throw Exception("Something went wrong");
    }
  }

  static Future<void> logout() async {
    try {
      await _firebaseAuth.signOut();
    } on FirebaseAuthException catch (e) {
      throw Exception(_handleAuthError(e));
    } catch (e) {
      throw Exception("Something went wrong");
    }
  }

  static Future<void> signInWithGoogle() async {
    try {
      await GoogleSignIn.instance.initialize(
        serverClientId:
            '127376482692-d3bbvmud3o6k9k9vqbjdfvj9vtp6uai7.apps.googleusercontent.com',
      );

      final GoogleSignInAccount googleUser = await GoogleSignIn.instance
          .authenticate();

      final GoogleSignInAuthentication googleAuth = googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      throw Exception("Something went wrong");
    }
  }

  static String _handleAuthError(FirebaseAuthException e) {
    switch (e.code) {
      case 'user-not-found':
        return 'Email not found';
      case 'wrong-password':
        return 'Wrong password';
      case 'invalid-email':
        return 'Invalid email format';
      case 'user-disabled':
        return 'User account disabled';
      case 'too-many-requests':
        return 'Too many attempts, try later';
      case 'weak-password':
        return 'Password is too weak';
      case 'email-already-in-use':
        return 'Email already in use';
      default:
        return 'Authentication error';
    }
  }
}
