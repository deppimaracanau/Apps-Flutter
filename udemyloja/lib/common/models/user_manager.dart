import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:udemyloja/common/models/user.dart';

class UserManager {

  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> signIn(Usuario usuario) async {
    try {
      final UserCredential result = await auth.signInWithEmailAndPassword(
          email: usuario.email, password: usuario.senha);

      print(result.user?.uid);
    } on PlatformException catch (e){
      print(e);
    }
  }

}

