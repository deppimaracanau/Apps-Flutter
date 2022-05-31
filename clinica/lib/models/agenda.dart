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

  static final _listIndications = [
    RecomendacaoMedica.kDrinkWater,
    RecomendacaoMedica.kEatVegetables,
    RecomendacaoMedica.kExercise,
    RecomendacaoMedica.kNoCoffee,
    RecomendacaoMedica.kNoDrinkAlcohol,
    RecomendacaoMedica.kNoEatFastFood,
  ];

  static final nextAppointment = Agenda(
    titulo: 'Heart care',
    data: DateTime.now().add(const Duration(days: 30)),
    medico: Medico.drRichard,
    recomendacaoMedica: _listIndications,
  );

  static final skinCareAppointment = Agenda(
    titulo: 'Skin care',
    data: DateTime.now().subtract(const Duration(days: 10)),
    medico: Medico.drLiliana,
    recomendacaoMedica: _listIndications,
  );

  static final sutureAppointment = Agenda(
    titulo: 'Suture revision',
    data: DateTime.now().subtract(const Duration(days: 30)),
    medico: Medico.drEdward,
    recomendacaoMedica: _listIndications,
  );

  static final childAppointment = Agenda(
    titulo: 'Kid Vaccine',
    data: DateTime.now().subtract(const Duration(days: 50)),
    medico: Medico.drJulissa,
    recomendacaoMedica: _listIndications,
  );

  static final listCompromisso = [
    compromissoCuidadosPele,
    compromissoSutura,
    compromissoFilho,
  ];
}