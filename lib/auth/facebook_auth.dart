import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

import 'auth_util.dart';

Future<UserCredential> facebookSignIn() async {
  // Trigger the sign-in flow
  final LoginResult loginToken = await FacebookAuth.instance.login();
  final AccessToken result = loginToken.accessToken;

  // Create a credential from the access token
  final FacebookAuthCredential facebookAuthCredential =
      FacebookAuthProvider.credential(result.token);

  // Once signed in, return the UserCredential
  return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
}

Future<User> signInWithFacebook(BuildContext context) =>
    signInOrCreateAccount(context, facebookSignIn);
