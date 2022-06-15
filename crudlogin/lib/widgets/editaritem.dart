import 'package:flutter/material.dart';
import 'package:crudlogin/Cor/cores.dart';
import 'package:crudlogin/ultilitarios/banco.dart';
import 'package:crudlogin/ultilitarios/validador.dart';
import 'novocampo.dart';

class EditarItem extends StatefulWidget {
  final FocusNode titulo;
  final FocusNode descricao;
  final String tituloAtual;
  final String descricaoAtual;
  final String documento;

  const EditarItem({
    required this.titulo,
    required this.descricao,
    required this.tituloAtual,
    required this.descricaoAtual,
    required this.documento,
  });

  @override
  _EditItemFormState createState() => _EditItemFormState();
}

class _EditItemFormState extends State<EditarItem> {
  final _editItemFormKey = GlobalKey<FormState>();

  bool _processando = false;

  late TextEditingController _tituloControle;
  late TextEditingController _descricaoControle;

  @override
  void initState() {
    _tituloControle = TextEditingController(
      text: widget.tituloAtual,
    );

    _descricaoControle = TextEditingController(
      text: widget.descricaoAtual,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _editItemFormKey,
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
                  controller: _tituloControle,
                  foco: widget.titulo,
                  keyboardType: TextInputType.text,
                  inputAction: TextInputAction.next,
                  validador: (value) => Validador.validarCampo(
                    value: value,
                  ),
                  rotulo: 'Titulo',
                  dica: 'Coloque aqui seu titulo',
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
                  controller: _descricaoControle,
                  foco: widget.descricao,
                  keyboardType: TextInputType.text,
                  inputAction: TextInputAction.done,
                  validador: (value) => Validador.validarCampo(
                    value: value,
                  ),
                  rotulo: 'Descrição',
                  dica: 'Coloque aqui sua descrição',
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

                if (_editItemFormKey.currentState!.validate()) {
                  setState(() {
                    _processando = true;
                  });

                  await Banco.updateItem(
                    docId: widget.documento,
                    title: _tituloControle.text,
                    description: _descricaoControle.text,
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
                  'Atualizar item',
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