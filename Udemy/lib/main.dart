import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


void main() {
  runApp(const App());
  FirebaseFirestore.instance.collection('teste').add({'teste':'teste1'});




  runApp(const App());



}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
