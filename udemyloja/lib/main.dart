import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemyloja/common/models/user_manager.dart';

import 'package:udemyloja/screens/base/base_screen.dart';

void main() {
  runApp( const MyApp());

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
