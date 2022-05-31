import 'package:flutter/material.dart';
import 'ui/home.dart';


//app de exemplo
void main() {
  runApp(const TemplateGalleryApp());
}

class TemplateGalleryApp extends StatelessWidget {
  const TemplateGalleryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:  const Color.fromARGB(100, 100, 100, 100),
        appBarTheme: AppBarTheme(
          color: Colors.green[900],
          centerTitle: true,
          iconTheme: const IconThemeData(
            color: Colors.white70,
          ),
        ),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.grey[800]),
        ),
        iconTheme: const IconThemeData(color: Colors.grey),
      ),
      home: const PaginaDeContato(),
    );
  }
}

