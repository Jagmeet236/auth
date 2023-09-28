import 'dart:developer';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'constants/enums.dart';
import 'exceptions/exceptions.dart';

class AuthApi {
  AuthApi({
    required FirebaseAuth? authClient,
  }) : this._authClient = authClient ?? FirebaseAuth.instance;

  final FirebaseAuth _authClient;
  String verificationId = '';
  bool isCodeSent = false;

  Stream<User?> get user => _authClient.authStateChanges();

  Future<void> signIn(String phonenumber, {Function? onFail}) async {
    await _authClient.verifyPhoneNumber(
        phoneNumber: phonenumber,
        verificationCompleted: (credential) async {
          await _authClient.signInWithCredential(credential);
        },
        codeSent: (verificationId, resendToken) {
          this.verificationId = verificationId;
          isCodeSent = true;
        },
        codeAutoRetrievalTimeout: (verificationId) {
          this.verificationId = verificationId;
        },
        verificationFailed: (FirebaseAuthException e) {
          if (e.code == 'invalid-phone-number') {
            log("Error: Provided phone number is not valid.");
            if (onFail != null) {
              onFail();
            }
            throw AuthException();
          } else {
            log("Error: Something went wrong. please Try again.");
          }
        });
  }

  Future<bool> verifyOTP(String otp) async {
    var credentials = await _authClient.signInWithCredential(
        PhoneAuthProvider.credential(
            verificationId: verificationId, smsCode: otp));
    return credentials.user != null ? true : false;
  }

  ///Sign In with Google
  Future logInWithGoogle(context) async {
    final googleSignIn = GoogleSignIn(scopes: ['email']);
    try {
      await InternetAddress.lookup('google.com');
      final googleSignInAccount = await googleSignIn.signIn();
      if (googleSignInAccount == null) {
        return false;
      }
      final googleSignInAuthentication =
          await googleSignInAccount.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      await _authClient.signInWithCredential(credential).then((value) => {
            if (value != null) {print('sucess')} else {throw AuthException()}
          });
      return true;
    } catch (e) {
      final authStatus = AuthException.handleException(e);

      // Now, you can handle the custom authStatus accordingly
      switch (authStatus) {
        case AuthResultStatus.invalidEmail:
          // Handle invalid email error
          break;
        case AuthResultStatus.wrongPassword:
          // Handle wrong password error
          break;
        case AuthResultStatus.userNotFound:
          // Handle user not found error
          break;
        // Handle other cases here

        default:
          // Handle undefined or other errors here
          return AuthResultStatus.undefined;
      }

      return false; // Sign-in failed
    }
  }

  // Sign in with Facebook
  Future<bool> signInWithFacebook() async {
    try {
      final LoginResult result = await FacebookAuth.instance.login();

      if (result.status == LoginStatus.success) {
        final OAuthCredential credential =
            FacebookAuthProvider.credential(result.accessToken!.token);
        final UserCredential authResult =
            await _authClient.signInWithCredential(credential);
        final User? user = authResult.user;

        if (user != null) {
          // Sign-in successful
          print('sucess');
        } else {
          throw AuthException();
        }
      }

      // Sign-in failed
      return true;
    } catch (e) {
      // Handle the exception using AuthException
      final authStatus = AuthException.handleException(e);
      print("Facebook Sign-in error: $authStatus");
      return false;
    }
  }
}
