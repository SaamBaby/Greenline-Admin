// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @preResolve
  Future<Connectivity> get connectivity async => Connectivity();
  // Future<GoogleSignIn> get googleSignIn async => GoogleSignIn();
  // @preResolve
  // Future<FirebaseAuth> get firebaseAuth async=> FirebaseAuth.instance;

}
