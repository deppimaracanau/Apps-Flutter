import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:clinica/models/especialidade.dart.dart';

import '../../../models/especialidade.dart.dart';

class Categoria extends StatelessWidget {
  const Categoria({
    Key? key,
    required this.categoria,
    required this.nomeCategoria,
  }) : super(key: key);

  final Especialidade categoria;
  final Especialidade nomeCategoria;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [
            Color(categoria.cor!),
            Color(categoria.cor!).withAlpha(1000),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            left: -30,
            bottom: -20,
            child: Container(
              height: 90,
              width: 90,
              decoration: const BoxDecoration(
                color: Colors.white12,
                shape: BoxShape.circle,
              ),
              child: Icon(
                categoria.iconData,
                color: Colors.white38,
                size: 45,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  categoria.nomeEspecialidade!,
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  softWrap: false,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 18,
                    height: 1.2,
                  ),
                ),
                const Spacer(),
                Text.rich(
                  TextSpan(
                    text: 'Medico ${categoria.medico}\n',
                    children: [
                      TextSpan(
                        text: 'Especialidae ${categoria.nomeEspecialidade}',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.end,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
