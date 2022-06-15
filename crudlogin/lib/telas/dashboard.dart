import 'package:crudlogin/telas/adicionartelas.dart';
import 'package:crudlogin/widgets/titulo.dart';
import 'package:crudlogin/widgets/listaritem.dart';
import 'package:flutter/material.dart';
import 'package:crudlogin/widgets/titulo.dart';
import 'package:crudlogin/Cor/cores.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final FocusNode _nome = FocusNode();
  final FocusNode _email = FocusNode();
  final FocusNode _senha = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cores.firebaseNavy,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Cores.firebaseNavy,
        title: Titulo(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Adicionartelas(),
            ),
          );
        },
        backgroundColor: Cores.firebaseOrange,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 32,
        ),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            bottom: 20.0,
          ),
          child: Listaritem(),
        ),
      ),
    );
  }
}