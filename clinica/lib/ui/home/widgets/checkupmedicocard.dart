import 'package:clinica/cores/cordoapp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/checkup.dart';

/// It's a card that shows the checkup values and the medical state

class CardCheckup extends StatelessWidget {
  const CardCheckup({
    Key? key,
    required this.check,
  }) : super(key: key);

  final DiagnosticoMedico check;

  @override
  Widget build(BuildContext context) {
    /// It's a card that shows the checkup values and the medical state
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
                child: SvgPicture.asset(check.getSvgCaminho()!),
              ),
              const SizedBox(width: 5),
              /// It's a column that shows the checkup values and the medical state
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      check.check.toString().split('.')[1],
                      overflow: TextOverflow.fade,
                      softWrap: false,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                      ),
                    ),
                    Text(
                      '${check.value.toString()} '
                          '${check.getParamentros()}',
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
        /// It's a container that shows the medical state of the checkup
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: getDiagnosticoCor(check.getDiagnostico()),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(10),
                topLeft: Radius.circular(20),
              ),
            ),
            child: Text(
              check.getDiagnostico().toString().split(".")[1],
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

  /// It returns a color based on the DiagnosticoMedico enum.
  ///
  /// Args:
  ///   diagnosticoMedico (DiagnosticoMedico): The enum value that you want to get
  /// the color for.
  ///
  /// Returns:
  ///   A map of DiagnosticoMedico to Color.
  Color? getDiagnosticoCor(Diagnostico diagnostico) {
    return {
      Diagnostico.normal: Colors.lightGreenAccent[700],
      Diagnostico.alerta: Colors.amberAccent[700],
      Diagnostico.atencao: Colors.redAccent[700],
    }[DiagnosticoMedico];
  }
}

