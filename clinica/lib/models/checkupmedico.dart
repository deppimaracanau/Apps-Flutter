enum Diagnostico { danger, normal, alert }

class CheckupMedico {
  const CheckupMedico({this.titulo, this.informacao, this.caminhoImagem, this.estatus});

  final String? titulo;
  final String? informacao;
  final String? caminhoImagem;
  final Diagnostico? estatus;

  static const listItemCheck = [
    CheckupMedico(
      titulo: 'Weight & Height',
      informacao: '149.7 lb - 172 cm',
      caminhoImagem: 'assets/img/medical/weight.png',
      estatus: Diagnostico.normal,),
    CheckupMedico(
      titulo: 'Blood pressure',
      informacao: '130/90 mm',
      caminhoImagem: 'assets/img/medical/arm.png',
      estatus: Diagnostico.alert,),
    CheckupMedico(
      titulo: 'Cholesterol',
      informacao: '200 mg/dl',
      caminhoImagem: 'assets/img/medical/cholesterol.png',
      estatus: Diagnostico.alert,),
    CheckupMedico(
      titulo: 'Glucose',
      informacao: '200 mg/dl',
      caminhoImagem: 'assets/img/medical/diabetes-test.png',
      estatus: Diagnostico.danger,
    ),
    CheckupMedico(
      titulo: 'Lung health',
      informacao: '90 %',
      caminhoImagem: 'assets/img/medical/lungs.png',
      estatus: Diagnostico.normal,
    ),
    CheckupMedico(
      titulo: 'Stress',
      informacao: '40 %',
      caminhoImagem: 'assets/img/medical/brain.png',
      estatus: Diagnostico.alert,
    ),
  ];



  
}