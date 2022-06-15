import 'package:flutter/material.dart';
import 'package:crudlogin/widgets/novocampo.dart';
import 'package:crudlogin/ultilitarios/banco.dart';
import 'package:crudlogin/ultilitarios/validador.dart';
import 'package:crudlogin/Cor/cores.dart';


class Itemform extends StatefulWidget {


  final FocusNode  titulo;
  final FocusNode  descricao;

   Itemform({Key? key,
    required this.titulo,
    required this.descricao,
}) : super(key: key);
  @override
  _ItemformState createState() => _ItemformState();
}

class _ItemformState extends State<Itemform> {


  final _adicionar = GlobalKey<FormState>();

  bool _processando = false;

  final TextEditingController _tituloControler = TextEditingController();
  final TextEditingController _descricaoControler = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _adicionar,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 8.0,
              bottom: 24.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24.0),
                const Text(
                  'Title',
                  style: TextStyle(
                    color: Cores.firebaseGrey,
                    fontSize: 22.0,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                NovoCampo(
                  isLabelEnabled: false,
                  controller: _tituloControler,
                  foco: widget.titulo,
                  keyboardType: TextInputType.text,
                  inputAction: TextInputAction.next,
                  validador: (value) => Validador.validarCampo(
                    value: value,
                  ),
                  rotulo: 'Title',
                  dica: 'Enter your note title',
                ),
                const SizedBox(height: 24.0),
                const Text(
                  'Description',
                  style: TextStyle(
                    color: Cores.firebaseGrey,
                    fontSize: 22.0,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                NovoCampo(
                  maxLines: 10,
                  isLabelEnabled: false,
                  controller: _descricaoControler,
                  foco: widget.descricao,
                  keyboardType: TextInputType.text,
                  inputAction: TextInputAction.done,
                  validador: (value) => Validador.validarCampo(
                    value: value,
                  ),
                  rotulo: 'Descrição',
                  dica: 'Sua nota descritivia aqui',
                ),
              ],
            ),
          ),
          _processando
              ? const Padding(
            padding: EdgeInsets.all(16.0),
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Cores.firebaseOrange,
              ),
            ),
          )
              : SizedBox(
            width: double.maxFinite,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Cores.firebaseOrange,
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              onPressed: () async {
                widget.titulo.unfocus();
                widget.descricao.unfocus();

                if (_adicionar.currentState!.validate()) {
                  setState(() {
                    _processando = true;
                  });

                  await Banco.addItem(
                    title: _tituloControler.text,
                    description: _descricaoControler.text,
                  );

                  setState(() {
                    _processando = false;
                  });

                  Navigator.of(context).pop();
                }
              },
              child: const Padding(
                padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                child: Text(
                  'Adicionar item',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Cores.firebaseGrey,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}