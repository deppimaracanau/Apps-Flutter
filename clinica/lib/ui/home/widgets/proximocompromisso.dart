import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:clinica/models/agenda.dart';
import 'package:clinica/cores/cordoapp.dart';
import 'package:clinica/cores/calendario.dart';

/// It returns a container with a stack of widgets, which contains a row with two
/// widgets, which contains a column with a text widget and a row with three widgets
class ProximoCompromisso extends StatelessWidget{
  const ProximoCompromisso({
   Key? key,
   required this.altura,
   required this.agenda,
   this.margem,
});
  final double altura;
  final EdgeInsetsGeometry? margem;
  final Agenda agenda;

  @override
  Widget build(BuildContext context) {
    final medico = agenda.medico!;
    /// Creating a container with a stack of widgets.
    return Container(
      width: double.infinity,
      height: altura,
      margin: margem,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          /// Creating a row with two widgets.
          Row(
            children: [
              //---------------------------
              //-----ICON CARD
              //---------------------------
              /// A widget that expands its child to fill the available space.
              Expanded(
                flex: 6,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.white, width: 3),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        medico.especialidade!.iconData,
                        size: altura * .4,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        agenda.titulo!,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: const TextStyle(
                          fontSize: 15,
                          height: 1.2,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //------------------------------
              //-----APPOINTMENT INFORMATION
              //------------------------------
              /// A column with a text widget and a row with three widgets.
              Expanded(
                flex: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    _buildTextRich(
                      title: "Date",
                      subtitle: Calendario.formatToTextDate(agenda.data!),
                    ),
                    const Spacer(),
                    //-------------------------------
                    //-----NAME AND PHOTO DOCTOR
                    //-------------------------------
                    /// Creating a row with three widgets.
                    Row(
                      children: [
                        _buildTextRich(
                          title: "Dr. ${medico.nome}",
                          subtitle: medico.especialidade!.nomeEspecialidade,
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                            Border.all(color: Colors.white60, width: 3),),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage:
                            CachedNetworkImageProvider(medico.fotoCaminho!),
                          ),
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              )
            ],
          ),
          //-----------------------------
          //-----HOUR DATE
          //-----------------------------
          /// A widget that is positioned at the top right of the screen.
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: const BoxDecoration(
                color: Colors.white60,
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.circular(20)),),
              child: Text(
                Calendario.extractHourDate(agenda.data!),
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: CorDoApp.cDarkBlue,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// It returns a Text widget with a title and a subtitle.
  ///
  /// Args:
  ///   title (String): The title of the card.
  ///   subtitle (String): The text to be displayed in the subtitle.
  ///
  /// Returns:
  ///   A Text widget with a TextSpan as its data.
  Text _buildTextRich({String? title, String? subtitle}) {
    return Text.rich(
      TextSpan(
        text: '$title \n',
        children: [
          TextSpan(
            text: subtitle,
            style: const TextStyle(fontWeight: FontWeight.normal),
          ),
        ],
      ),
      style:const  TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}