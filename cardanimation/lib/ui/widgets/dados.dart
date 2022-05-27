import 'package:cardanimation/models/contatos.dart';
import 'package:flutter/material.dart';

class ContatosCard extends StatelessWidget {
  const ContatosCard({
    Key? key,
    required this.borderColor,
    required this.contatos,
  }) : super(key: key);

  final Color borderColor;
  final Contatos contatos;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //-----------------------------
        // traseira do card
        //-----------------------------
        Align(
          heightFactor: .9,
          alignment: Alignment.centerLeft,
          child: Container(
            height: 30,
            width: 70,
            decoration: BoxDecoration(
              color: borderColor,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(10),
              ),
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
        //-----------------------------
        // corpo do card
        //-----------------------------
        Expanded(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: borderColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            //-----------------------------
            // frente do card
            //-----------------------------
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //---------------------------
                  // nome e função
                  //---------------------------
                  Flexible(
                    child: Row(
                      children: [
                        const Icon(
                          Icons.person_outlined,
                          size: 40,
                        ),
                        const SizedBox(width: 10),
                        Flexible(
                          child: Text.rich(
                            TextSpan(
                              text: contatos.nome,
                              children: [
                                TextSpan(
                                  text: '\n${contatos.ocupacao}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5,
                                  ),
                                )
                              ],
                            ),
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //---------------------------
                  // endereço
                  //---------------------------
                  Flexible(
                    child: Row(
                      children: [
                        const Icon(
                          Icons.home_outlined,
                          size: 40,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          contatos.endereco,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.deepPurple,
                          ),
                        )
                      ],
                    ),
                  ),
                  //---------------------------
                  // telefone
                  //---------------------------
                  Flexible(
                    child: Row(
                      children: [
                        const Icon(
                          Icons.phone_outlined,
                          size: 40,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          contatos.telefone,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  //---------------------------
                  // email
                  //---------------------------
                  Flexible(
                    child: Row(
                      children: [
                        const Icon(
                          Icons.email_outlined,
                          size: 40,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              contatos.email,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.deepPurple,
                              ),
                            ),
                            // Text(
                            //   contatos.lattes,
                            //   style: const TextStyle(
                            //     fontSize: 16,
                            //     color: Colors.deepPurple,
                            //   ),
                            // ),
                          ],
                        ),
                        ]
                          ),
                  ),
                      //---------------------------
                      // site
                      //---------------------------
                      Flexible(
                        child: Row(
                          children: [
                            const Icon(
                              Icons.web,
                              size: 40,
                            ),
                            const SizedBox(width: 10),
                            Column(
                              children: [
                                Text(
                                  contatos.lattes,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.deepPurple,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

              ),
            ),
          ),

      ],
    );
  }
}


