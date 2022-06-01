import 'package:clinica/cores/cordoapp.dart';
import 'package:flutter/material.dart';
import 'package:clinica/models/checkup.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/checkupmedico.dart';

/// It's a card that shows the checkup values and the medical state

class CardCheckup extends StatelessWidget {
  const CardCheckup({
    Key? key,
    required this.checkupMedico,
  }) : super(key: key);

  final CheckupMedico checkupMedico;
  /// Creating a card with a shadow and a rounded border.
  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.1),
                blurRadius: 10,
                offset: const Offset(-3, 3),),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: SvgPicture.asset(checkupMedico.caminhoImagem!),
              ),
              const SizedBox(width: 5),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /// Getting the enum value and showing it in the screen.
                    Text(
                      checkupMedico.estatus.toString().split('.')[1],
                      overflow: TextOverflow.fade,
                      softWrap: false,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                      ),
                    ),
                    /// Showing the value of the checkup and the parameters.
                    Text(
                      '${checkupMedico.informacao.toString()} '
                          '${checkupMedico.getParamentros()}',
                      overflow: TextOverflow.fade,
                      softWrap: false,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: CorDoApp.cLightCyan,
                      ),
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
              )
            ],
          ),
        ),
        /// A widget that is positioned at the bottom right of the screen.
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: _getMedicalStateColor(checkupMedico.getTriagemMedica()),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(10),
                topLeft: Radius.circular(20),
              ),
            ),
            child: Text(
              checkupMedico.getTriagemMedica().toString().split(".")[1],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }

  /// It returns a color based on the triagemMedica value
  ///
  /// Args:
  ///   triagemMedica (TriagemMedica): The enum value that will be used to determine
  /// the color.
  ///
  /// Returns:
  ///   A function that returns a color based on the triagemMedica parameter.
  Color? getTriagemMedica(TriagemMedica triagemMedica) {
    return {
      TriagemMedica.normal: Colors.lightGreenAccent[700],
      TriagemMedica.alerta: Colors.amberAccent[700],
      TriagemMedica.risco: Colors.redAccent[700],
    }[TriagemMedica];
  }
}

