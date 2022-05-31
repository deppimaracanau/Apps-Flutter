import 'package:flutter/cupertino.dart' show IconData;
import 'package:clinica/cores/iconsdoapp.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Especialidade {
  const Especialidade._({
    this.iconData,
    this.nomeEspecialidadde,
    this.espc,
    this.medicos,
    this.cores,
  });

  final String? nomeEspecialidadde;
  final int? espc;
  final int? medicos;
  final int? cores;
  final IconData? iconData;

  static const CCardiologista = Especialidade._(
    nomeEspecialidadde: 'Cardiologist',
    medicos: 9,
    iconData: FontAwesomeIcons.heartPulse,
    espc: 10,
    cores: 0xffFF565D,);

  static const CPediatra = Especialidade._(
    nomeEspecialidadde: "Pediatrician",
    medicos: 9,
    iconData: ClincaIcons.pediatrician,
    espc: 10,
    cores: 0xffFCD94A,);

  static const COrtopedista = Especialidade._(
    nomeEspecialidadde: "Surgeon",
    iconData: ClincaIcons.surgeon,
    medicos: 9,
    espc: 10,
    cores: 0xff1BCAB2,);

  static const CUrologista = Especialidade._(
    nomeEspecialidadde: "Urologist",
    medicos: 9,
    iconData: ClincaIcons.prostate,
    espc: 10,
    cores: 0xff33b5e5,);

  static const CArlegista = Especialidade._(
    nomeEspecialidadde: "Allergist",
    medicos: 9,
    iconData: ClincaIcons.runny_nose,
    cores: 0xffFFaf00,
    espc: 10,);

  static const CDermatologista = Especialidade._(
    nomeEspecialidadde: "Dermatologist",
    iconData: ClincaIcons.skin,
    medicos: 9,
    cores: 0xffff6ad3,
    espc: 10,);

  static const COftalmologista = Especialidade._(
    nomeEspecialidadde: "Ophthalmologist",
    medicos: 9,
    iconData: ClincaIcons.eye,
    cores: 0xff28EB62,
    espc: 10,);

  static const CEndocrinologista = Especialidade._(
    nomeEspecialidadde: "Endocrinologist",
    medicos: 9,
    iconData: ClincaIcons.kidneys,
    cores: 0xff993299,
    espc: 10,);

  static const categories = [
    CCardiologista,
    CPediatra,
    COrtopedista,
    CUrologista,
    CArlegista,
    CDermatologista,
    COftalmologista,
    CEndocrinologista,
  ];
}