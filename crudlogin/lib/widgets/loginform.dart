import 'package:crudlogin/telas/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:crudlogin/widgets/novocampo.dart';
import 'package:crudlogin/ultilitarios/banco.dart';
import 'package:crudlogin/ultilitarios/validador.dart';
import 'package:crudlogin/Cor/cores.dart';

class LogiForm extends StatefulWidget {
final FocusNode foco;


  const LogiForm({
    Key? key,
    required this.foco,
  }) : super(key: key);

  @override
  _LoginformState createState() => _LoginformState();
}

class _LoginformState extends State<LogiForm> {

  final TextEditingController  _uidController = TextEditingController();

  final _loginFormKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _loginFormKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 8.0,
              bottom: 24.0,
            ),
            child: Column(
              children: [
                NovoCampo(
                  controller: _uidController,
                  foco: widget.foco,
                  keyboardType: TextInputType.text,
                  inputAction: TextInputAction.done,
                  validador: (value) => Validador.validateUserID(
                    uid: value,
                  ),
                  rotulo: 'Id de usuario',
                  dica: 'Indentificador unico',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0.0, right: 0.0),
            child: SizedBox(
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
                onPressed: () {
                  widget.foco.unfocus();

                  if (_loginFormKey.currentState!.validate()) {
                    Banco.userUid = _uidController.text;

                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const Dashboard(),
                      ),
                    );
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                  child: Text(
                    'LOGIN',
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
          ),
        ],
      ),
    );
  }
}
