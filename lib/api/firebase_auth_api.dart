import 'package:auth/src/exceptions/exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../auth.dart';

typedef JSN = Map<String, dynamic>;

class FirebaseAuthApi {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<UserDataModel> getUserData(String uid) async {
    try {
      DocumentSnapshot<JSN> docSnapshot =
          await _firestore.collection('users').doc(uid).get();
      if (docSnapshot.exists) {
        return UserDataModel.fromJson(docSnapshot.data() as JSN);
      } else {
        throw CustomException('User no Found');
      }
    } catch (e) {
      rethrow; // Rethrow the error for handling in the calling code
    }
  }

  Future<void> setUserData(UserDataModel userData) async {
    try {
      await _firestore
          .collection('users')
          .doc(userData.uid)
          .set(userData.toJson());
    } catch (e) {
      rethrow; // Rethrow the error for handling in the calling code
    }
  }

  /// Get user profile data from Firebase using the provided [uid].
  /// Throws [CustomException] if the user is not found.
  Future<UserProfile> getUserProfile(String uid) async {
    try {
      // Retrieve user profile data from Firebase using uid
      // If user not found, throw a CustomException

      DocumentSnapshot<JSN> docSnapshot =
          await _firestore.collection('users').doc(uid).get();
      if (docSnapshot.exists) {
        return UserProfile.fromJson(docSnapshot.data() as JSN);
      } else {
        throw CustomException("User not found!");
      }
    } catch (e) {
      rethrow;
    }
  }

  /// Set user profile data to Firebase.
  Future<void> setUserProfile(UserProfile userProfile) async {
    try {
      await _firestore
          .collection('users')
          .doc(userProfile.uid)
          .set(userProfile.toJson());
    } catch (e) {
      rethrow;
    }
  }
}
