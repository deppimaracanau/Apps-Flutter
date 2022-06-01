import 'package:flutter/material.dart';
import 'package:clinica/models/agenda.dart';
import 'package:flutter_svg/svg.dart';

/// It's a `Column` widget that has a `Text` widget, a `Container` widget, another
/// `Text` widget, and a `SizedBox` widget inside it
class DetalhesDaAgenda extends StatelessWidget {
  const DetalhesDaAgenda({
    Key? key,
    required this.agenda,
  }) : super(key: key);
  final Agenda agenda;

  @override
  Widget build(BuildContext context) {
    const  selecao = TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const  Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Text(
            'Endereco da clinica',
            style: selecao,
          ),
        ),
        //--------------------------------------
        //------Endereco da clinica
        //--------------------------------------
        /// A container with a row inside it.
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 90,
          decoration: BoxDecoration(
            color: Colors.white30, borderRadius: BorderRadius.circular(10),),
          child: Row(
            children: <Widget>[
              const Icon(
                Icons.map,
                size: 40,
                color: Colors.white,
              ),
              const SizedBox(width: 10),
              Flexible(
                child: Text(
                  agenda.medico!.endereco!.getEnderecoCompleto(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
              )
            ],
          ),
        ),
        /// A padding widget with a text widget inside it.
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Text(
            'Recomendação médica',
            style: selecao,
          ),
        ),
        //--------------------------------------------------
        //-----Lista de recomendacao medica
        //--------------------------------------------------
        /// A `ListView` widget that is inside a `SizedBox` widget.
        SizedBox(
          height: 90,
          child: ListView.builder(
            itemCount: agenda.recomendacaoMedica!.length,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final recomendacao = agenda.recomendacaoMedica![index];
              return Container(
                width: 180,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  // color: Colors.white,
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: SvgPicture.asset(
                        recomendacao.svgCaminho!,
                        color: Colors.white,
                      ),),
                    const SizedBox(width: 5),
                    Expanded(
                      flex: 2,
                      child: Text(
                        recomendacao.descricao!,
                        maxLines: 3,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}