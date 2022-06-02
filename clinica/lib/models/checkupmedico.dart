enum Diagnostico { cuidado, normal, atencao }

class CheckupMedico {
  const CheckupMedico({this.titulo, this.informacao, this.caminhoImagem, this.estatus});

  final String? titulo;
  final String? informacao;
  final String? caminhoImagem;
  final Diagnostico? estatus;

  static const listaCheckup = [
    CheckupMedico(
      titulo: 'Peso e altura',
      informacao: '149.7 lb - 172 cm',
      caminhoImagem: 'assets/img/medical/weight.png',
      estatus: Diagnostico.normal,),
    CheckupMedico(
      titulo: 'Pressão',
      informacao: '130/90 mm',
      caminhoImagem: 'assets/img/medical/arm.png',
      estatus: Diagnostico.atencao,),
    CheckupMedico(
      titulo: 'Colesterol',
      informacao: '200 mg/dl',
      caminhoImagem: 'assets/img/medical/cholesterol.png',
      estatus: Diagnostico.atencao,),
    CheckupMedico(
      titulo: 'Glicose',
      informacao: '200 mg/dl',
      caminhoImagem: 'assets/img/medical/diabetes-test.png',
      estatus: Diagnostico.cuidado,
    ),
    CheckupMedico(
      titulo: 'Saúde pulmonar',
      informacao: '90 %',
      caminhoImagem: 'assets/img/medical/lungs.png',
      estatus: Diagnostico.normal,
    ),
    CheckupMedico(
      titulo: 'Estress',
      informacao: '40 %',
      caminhoImagem: 'assets/img/medical/brain.png',
      estatus: Diagnostico.atencao,
    ),
  ];

}