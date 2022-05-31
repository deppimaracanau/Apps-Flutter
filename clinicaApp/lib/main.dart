import 'dart:convert';

import 'package:clinicaapp/telas/tela_base.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clinica App',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(100, 100, 100, 1),
        scaffoldBackgroundColor:const Color.fromARGB(0, 0, 0,1),

      ),
      home: const TelaBase(),
    );
  }
}
