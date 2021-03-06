import 'package:clinica/models/medico.dart';
import 'package:clinica/models/recomendacaomedica.dart';

class Agenda {
  Agenda({
    this.titulo,
    this.data,
    this.medico,
    this.recomendacaoMedica,
  });

  final String? titulo;
  DateTime? data;
  final Medico? medico;
  final List<RecomendacaoMedica>? recomendacaoMedica;

  static final _listaRecomendacao = [
    RecomendacaoMedica.cBeberAgua,
    RecomendacaoMedica.cComaVegetais,
    RecomendacaoMedica.cFacaExercicios,
    RecomendacaoMedica.cSemCafe,
    RecomendacaoMedica.cSemAlcool,
    RecomendacaoMedica.cSemFastfood,
  ];

  static final proximoCompromisso = Agenda(
    titulo: 'Avaliação cardiaca',
    data: DateTime.now().add(const Duration(days: 30)),
    medico: Medico.drRichard,
    recomendacaoMedica: _listaRecomendacao,
  );

  static final compromissoCuidadosPele = Agenda(
    titulo: 'Cuidados com a pele',
    data: DateTime.now().subtract(const Duration(days: 10)),
    medico: Medico.drLiliana,
    recomendacaoMedica: _listaRecomendacao,
  );

  static final compromissoSutura = Agenda(
    titulo: 'Revisão de cirurgia',
    data: DateTime.now().subtract(const Duration(days: 30)),
    medico: Medico.drEdward,
    recomendacaoMedica: _listaRecomendacao,
  );

  static final compromissoFilho = Agenda(
    titulo: 'Vacina infatil',
    data: DateTime.now().subtract(const Duration(days: 50)),
    medico: Medico.drJulissa,
    recomendacaoMedica: _listaRecomendacao,
  );

  static final listCompromisso = [
    compromissoCuidadosPele,
    compromissoSutura,
    compromissoFilho,
  ];
}