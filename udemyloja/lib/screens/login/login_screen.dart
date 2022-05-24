import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemyloja/helpers/validators.dart';
import 'package:udemyloja/common/models/user.dart';
import 'package:udemyloja/common/models/user_manager.dart';



class LoginScreen extends StatelessWidget {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

   LoginScreen({Key? key}) : super(key: key);

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
                  controller: emailController,
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
                const SizedBox(height: 10,),
                TextFormField(
                  controller: senhaController,
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
                const SizedBox(height: 16,),
                SizedBox(
                  height: 44,
                  child: ElevatedButton(
                    onPressed: (){
                      if(formKey.currentState!.validate()){
                        print(emailController.text);
                      }
                    },
                    // color: Theme.of(context).primaryColor,
                    // textColor: Colors.white,
                    child: const Text(
                      'Entrar',
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                  ),
                )
              ],
            ),
            ),
          ),
        ),
    );
  }

}

