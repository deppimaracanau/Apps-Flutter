import 'package:flutter/cupertino.dart' show IconData;
import 'package:clinica/cores/iconsdoapp.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Especialidade {
  const Especialidade._({
    this.iconData,
    this.nomeEspecialidade,
    this.espc,
    this.medicos,
    this.cores,
  });

  final String? nomeEspecialidade;
  final int? espc;
  final int? medicos;
  final int? cores;
  final IconData? iconData;

  static const cCardiologista = Especialidade._(
    nomeEspecialidade: 'Cardiologist',
    medicos: 9,
    iconData: FontAwesomeIcons.heartPulse,
    espc: 10,
    cores: 0xffFF565D,);

  static const cPediatra = Especialidade._(
    nomeEspecialidade: "Pediatrician",
    medicos: 9,
    iconData: ClincaIcons.pediatrician,
    espc: 10,
    cores: 0xffFCD94A,);

  static const cOrtopedista = Especialidade._(
    nomeEspecialidade: "Surgeon",
    iconData: ClincaIcons.surgeon,
    medicos: 9,
    espc: 10,
    cores: 0xff1BCAB2,);

  static const cUrologista = Especialidade._(
    nomeEspecialidade: "Urologist",
    medicos: 9,
    iconData: ClincaIcons.prostate,
    espc: 10,
    cores: 0xff33b5e5,);

  static const cArlegista = Especialidade._(
    nomeEspecialidade: "Allergist",
    medicos: 9,
    iconData: ClincaIcons.runny_nose,
    cores: 0xffFFaf00,
    espc: 10,);

  static const cDermatologista = Especialidade._(
    nomeEspecialidade: "Dermatologist",
    iconData: ClincaIcons.skin,
    medicos: 9,
    cores: 0xffff6ad3,
    espc: 10,);

  static const cOftalmologista = Especialidade._(
    nomeEspecialidade: "Ophthalmologist",
    medicos: 9,
    iconData: ClincaIcons.eye,
    cores: 0xff28EB62,
    espc: 10,);

  static const cEndocrinologista = Especialidade._(
    nomeEspecialidade: "Endocrinologist",
    medicos: 9,
    iconData: ClincaIcons.kidneys,
    cores: 0xff993299,
    espc: 10,);

  static const especialidades = [
    cCardiologista,
    cPediatra,
    cOrtopedista,
    cUrologista,
    cArlegista,
    cDermatologista,
    cOftalmologista,
    cEndocrinologista,
  ];


}