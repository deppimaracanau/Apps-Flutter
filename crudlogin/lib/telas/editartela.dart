import 'package:crudlogin/widgets/titulo.dart';
import 'package:flutter/material.dart';
import 'package:crudlogin/Cor/cores.dart';
import 'package:crudlogin/ultilitarios/banco.dart';
import 'package:crudlogin/widgets/editaritem.dart';



class Editartela extends StatefulWidget {
  final String tituloAtual;
  final String descricaoAtual;
  final String documento;

  const Editartela({
    required this.tituloAtual,
    required this.descricaoAtual,
    required this.documento,
  });

  @override
  _EditartelaState createState() => _EditartelaState();
}

class _EditartelaState extends State<Editartela> {

  final FocusNode _titulo = FocusNode();

  final FocusNode _descricao = FocusNode();

  bool _delete = false;

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
          actions: [
            _delete
                ? const Padding(
              padding: EdgeInsets.only(
                top: 10.0,
                bottom: 10.0,
                right: 16.0,
              ),
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Colors.redAccent,
                ),
                strokeWidth: 3,
              ),
            )
                : IconButton(
              icon: const Icon(
                Icons.delete,
                color: Colors.redAccent,
                size: 32,
              ),
              onPressed: () async {
                setState(() {
                  _delete = true;
                });

                await Banco.deleteItem(
                  docId: widget.documento,
                );

                setState(() {
                  _delete = false;
                });

                Navigator.of(context).pop();
              },
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              bottom: 20.0,
            ),
            child: EditarItem(
              documento: widget.documento,
              titulo: _titulo,
              descricao: _descricao,
              tituloAtual: widget.tituloAtual,
              descricaoAtual: widget.descricaoAtual,
            ),
          ),
        ),
      ),
    );
  }
}