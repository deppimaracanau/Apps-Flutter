import 'package:flutter/material.dart';

import '../comuns/desenhos_paginas/pagina_dois.dart';

class TelaBase extends StatelessWidget {
  const TelaBase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[

        const PaginaDois(),

        Container(
          color: Colors.yellow,
        ),
        Container(
          color: Colors.green,
        ),
      ],
    );
  }
}
