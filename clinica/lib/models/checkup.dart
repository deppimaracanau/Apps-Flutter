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