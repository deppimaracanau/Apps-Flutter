enum Checkup {
  peso,
  hemoglobina,
  pressao,
  eletrocardiograma,
  colestterol,
  glicose,
  altura
}
enum Diagnostico {
  normal,
  alerta,
  atencao
}

/// It's a class that holds a checkup type and a value
class DiagnosticoMedico {
  const DiagnosticoMedico({this.check, this.value});

  final Checkup? check;
  final double? value;


  String? getSvgCaminho() {
    return {
      Checkup.glicose: 'assets/mc-glucose.svg',
      Checkup.peso: 'assets/mc-weight.svg',
      Checkup.hemoglobina: 'assets/mc-hemoglobin.svg',
      Checkup.pressao: 'assets/mc-blood-pressure.svg',
      Checkup.eletrocardiograma: 'assets/mc-cardiogram.svg',
      Checkup.colestterol: 'assets/mc-cholesterol.svg',
      Checkup.altura: 'assets/mc-height.svg',
    }[check!];
  }

  /// It returns the unit of measurement of the checkup type, if it exists
  ///
  /// Returns:
  ///   A map with the values of the enum Checkup.
  String? getParamentros() {
    return {
      Checkup.glicose: 'g/dL',
      Checkup.peso: 'kg',
      Checkup.hemoglobina: 'g/dL',
      Checkup.pressao: 'mmHg',
      Checkup.eletrocardiograma: 'hz',
      Checkup.colestterol: 'mg/dL',
      Checkup.altura: 'cm'
    }[check!];
  }

  /// It returns a Diagnostico enum value based on the value of the check variable.
  ///
  /// Returns:
  ///   A Diagnostico object.
  Diagnostico getDiagnostico() {
    switch (check) {
      case Checkup.peso:
        return Diagnostico.alerta;
      case Checkup.glicose:
        return Diagnostico.normal;
      case Checkup.hemoglobina:
        return Diagnostico.alerta;
      case Checkup.pressao:
        return Diagnostico.normal;
      case Checkup.eletrocardiograma:
        return Diagnostico.normal;
      case Checkup.colestterol:
        return Diagnostico.atencao;
      default:
        return Diagnostico.normal;
    }
  }
}