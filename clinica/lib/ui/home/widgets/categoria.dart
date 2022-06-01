import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:clinica/models/especialidade.dart';

import '../../../models/especialidade.dart';

/// A widget that is a container that has a child that is a stack
class Categoria extends StatelessWidget {
  const Categoria({
    Key? key,
    required this.categoria,

  }) : super(key: key);

  final Especialidade categoria;


  @override
  /// A function that returns a widget.
  ///
  /// Args:
  ///   context (BuildContext): The context is used to access the theme and
  /// localizations of the app.
  Widget build(BuildContext context) {
    /// A widget that is a container that has a child that is a stack.
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [
            Color(categoria.cores!),
            Color(categoria.cores!).withAlpha(1000),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          /// A widget that controls where a child of a Stack is positioned.
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
          /// A widget that adds padding to its child.
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
                    text: 'Medico ${categoria.medicos}\n',
                    children: [
                      TextSpan(
                        text: 'Especialidade ${categoria.nomeEspecialidade}',
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
