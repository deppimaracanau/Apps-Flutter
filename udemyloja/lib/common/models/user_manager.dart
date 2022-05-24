import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:udemyloja/common/models/user.dart';

class UserManager {
  final FirebaseAuth auth = FirebaseAuth.instance;

  void signIn(User user) async {
    try {
      final AuthCredential result = (await auth.signInWithEmailAndPassword(
          email: user.email, password: user.senha)) as AuthCredential;
    } on PlatformException catch(e){
      if (kDebugMode) {
        print(e);
      }
    }
  }
}

// class UseManager {
//   final FirebaseAuth auth = FirebaseAuth.instance;
//
//
//
//   Future<void> signIn( User user) async {
//     try {
//       final UserCredential result = await auth.signInWithEmailAndPassword(
//           email: user.email, password: user.senha);
//     } on PlatformException catch (e) {
//       if (kDebugMode) {
//         print(e);
//       }
//     }
//   }
// }