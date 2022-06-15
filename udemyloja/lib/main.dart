import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemyloja/common/models/user_manager.dart';
import 'package:udemyloja/screens/base/base_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(apiKey: 'AIzaSyCb1aifmLsWtMOnDJhMBR6fJoyh333DpBQ', appId: '1:585860127271:android:5b201b27fbc5667dcd8c02', projectId: 'loja-4eea5', messagingSenderId: ''),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => UserManager(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'loja',
        theme: ThemeData(
          primaryColor: const  Color.fromARGB(255, 4, 125, 141),
          scaffoldBackgroundColor: const  Color.fromARGB(255, 4, 125, 141),
          visualDensity: VisualDensity.adaptivePlatformDensity,

        ),
        home: BaseScreen(),
      ),
    );
  }
}
