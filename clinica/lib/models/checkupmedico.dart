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
      caminhoImagem: 'assets/weight.jpg',
      estatus: Diagnostico.normal,),
    CheckupMedico(
      titulo: 'Pressão',
      informacao: '130/90 mm',
      caminhoImagem: 'assets/arm.jpg',
      estatus: Diagnostico.atencao,),
    CheckupMedico(
      titulo: 'Colesterol',
      informacao: '200 mg/dl',
      caminhoImagem: 'assets/cholesterol.jpg',
      estatus: Diagnostico.atencao,),
    CheckupMedico(
      titulo: 'Glicose',
      informacao: '200 mg/dl',
      caminhoImagem: 'assets/diabetes-test.jpg',
      estatus: Diagnostico.cuidado,
    ),
    CheckupMedico(
      titulo: 'Saúde pulmonar',
      informacao: '90 %',
      caminhoImagem: 'assets/lungs.png',
      estatus: Diagnostico.normal,
    ),
    CheckupMedico(
      titulo: 'Estress',
      informacao: '40 %',
      caminhoImagem: 'assets/brain.png',
      estatus: Diagnostico.atencao,
    ),
  ];

}