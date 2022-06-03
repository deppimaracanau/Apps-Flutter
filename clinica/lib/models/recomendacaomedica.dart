/// A class that contains a list of medical recommendations.
class RecomendacaoMedica {
  const RecomendacaoMedica._({
    this.svgCaminho,
    this.descricao,
    this.titulo
  });

  final String? titulo;
  final String? svgCaminho;
  final String? descricao;

   static const cSemAlcool = RecomendacaoMedica._(
    titulo: "Sem alcool",
    descricao: "não consuma bebidas alcólicas",
    svgCaminho: 'assets/alcool.svg',);
  static const cBeberAgua = RecomendacaoMedica._(
    titulo: "Beba bastante água",
    descricao: 'Beba mais água',
    svgCaminho: 'assets/agua.svg',);
  static const cSemFastfood = RecomendacaoMedica._(
    titulo: "Sem junkfood",
    descricao: "Don't eat fast food",
    svgCaminho: 'assets/fastfood.svg',);
  static const cComaVegetais = RecomendacaoMedica._(
    titulo: "Faça dieta",
    descricao: 'Coma masi verduras,legumes e frutas',
    svgCaminho: 'assets/vegetais.svg',);
  static const cSemCafe = RecomendacaoMedica._(
    titulo: "Evite beber café",
    descricao: "Faça uso moderado de cafeína",
    svgCaminho: 'assets/cafe.svg',);
  static const cFacaExercicios = RecomendacaoMedica._(
    titulo: "Faça exercicios",
    descricao: "Faça exercicios pelo menos 3x por semana",
    svgCaminho: 'assets/exercicios.svg',);
}