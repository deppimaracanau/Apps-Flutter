import 'package:crudlogin/widgets/titulo.dart';
import 'package:crudlogin/widgets/itemform.dart';
import 'package:crudlogin/Cor/cores.dart';
import 'package:flutter/material.dart';

class Adicionartelas extends StatelessWidget {
  final FocusNode _titulo = FocusNode();
  final FocusNode _descricao = FocusNode();




  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _titulo.unfocus();
        _descricao.unfocus();
      },
      child: Scaffold(
        backgroundColor: Cores.firebaseNavy,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Cores.firebaseNavy,
          title: const Titulo(),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              bottom: 20.0,
            ),
            child: Itemform(
              titulo: _titulo,
              descricao: _descricao,
            ),
          ),
        ),
      ),
    );
  }
}