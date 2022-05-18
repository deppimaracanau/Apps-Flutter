import 'package:flutter/material.dart';
import 'package:udemyloja/helpers/validators.dart';

class LoginScreen extends StatelessWidget {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entrar'),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: formKey,
            child: ListView(
              padding: const EdgeInsets.all(16),
              shrinkWrap: true,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'email',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                  validator: (email) {
                    if (!emailValid(email!)) {
                      return 'email invalido';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'senha',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                  autocorrect: false,
                  obscureText: true,
                  validator: (senha) {
                    if (senha!.isEmpty || senha.length < 6) {
                      return 'Senha invalida';
                    } else {
                          () {
                        return null;
                      };
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text('Esqueci a senha'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 44,
                  child: ElevatedButton(
                      onPressed: () {},
                      //Color: Theme.of(context).primaryColor,
                      child: const Text('Entrar')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}