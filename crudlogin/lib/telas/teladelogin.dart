import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:crudlogin/widgets/loginform.dart';
import 'package:crudlogin/Cor/cores.dart';


class Teladelogin extends StatefulWidget {
  const Teladelogin({Key? key}) : super(key: key);

  @override
  _TeladeloginState createState() => _TeladeloginState();
}

class _TeladeloginState extends State<Teladelogin> {
  final FocusNode _user = FocusNode();
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();

    return firebaseApp;
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _user.unfocus(),
      child: Scaffold(
        backgroundColor: Cores.firebaseNavy,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              bottom: 20.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Image.asset(
                          'assets/firebase_logo.png',
                          height: 160,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'FlutterFire',
                        style: TextStyle(
                          color: Cores.firebaseYellow,
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        'CRUD',
                        style: TextStyle(
                          color: Cores.firebaseOrange,
                          fontSize: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                FutureBuilder(
                  future: _initializeFirebase(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return const Text('Error initializing Firebase');
                    } else if (snapshot.connectionState ==
                        ConnectionState.done) {
                      return LogiForm(foco: _user,);
                    }
                    return CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Cores.firebaseOrange,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}