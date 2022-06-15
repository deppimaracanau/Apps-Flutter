import 'package:flutter/material.dart';
import 'package:crudlogin/Cor/cores.dart';

class Titulo extends StatelessWidget {
  const Titulo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize:  MainAxisSize.min,
      children: [
        Image.asset(
            'assets/logo.jpg',
          height: 20,
        ),
        const SizedBox(width: 8,),
        Text(
          'Flutter Login',
          style: TextStyle(
            color: Cores.firebaseYellow,
            fontSize: 18,
          ),
        ),
        Text(
          'Crud',
          style: TextStyle(
            color: Cores.firebaseOrange,
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
