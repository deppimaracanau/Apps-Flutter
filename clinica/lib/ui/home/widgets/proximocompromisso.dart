import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clinica/models/agenda.dart';
import 'package:clinica/cores/cordoapp.dart';
import 'package:clinica/cores/calendario.dart';

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
          Row(
            children: [
              //---------------------------
              //-----ICON CARD
              //---------------------------
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
              Expanded(
                flex: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    _buildTextRich(
                      title: "Date",
                      subtitle: MedCalendario.formatToTextDate(agenda.data!),
                    ),
                    const Spacer(),
                    //-------------------------------
                    //-----NAME AND PHOTO DOCTOR
                    //-------------------------------
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
                            CachedNetworkImageProvider(medico.fotoUrl!),
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
                MedCalendario.extractHourDate(agenda.data!),
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: CorDoApp.kDarkBlue,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

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