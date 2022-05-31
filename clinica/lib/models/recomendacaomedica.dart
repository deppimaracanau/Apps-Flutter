class RecomendacaoMedica {
  const RecomendacaoMedica._({this.svgCaminho, this.descricao, this.titulo});

  final String? titulo;
  final String? svgCaminho;
  final String? descricao;

  static const kNoDrinkAlcohol = RecomendacaoMedica._(
    titulo: "No alcohol",
    descricao: "Don't drinking alcohol",
    svgCaminho: 'assets/mi-no-drinking.svg',);
  static const kDrinkWater = RecomendacaoMedica._(
    titulo: "Drink water",
    descricao: 'Drink a lot of water',
    svgCaminho: 'assets/mi-drink-water.svg',);
  static const kNoEatFastFood = RecomendacaoMedica._(
    titulo: "No fast food",
    descricao: "Don't eat fast food",
    svgCaminho: 'assets/mi-no-fast-food.svg',);
  static const kEatVegetables = RecomendacaoMedica._(
    titulo: "Eat diet",
    descricao: 'Eat more vegetables',
    svgCaminho: 'assets/mi-eat-vegatables.svg',);
  static const kNoCoffee = RecomendacaoMedica._(
    titulo: "No coffee",
    descricao: "Don't consume caffeine",
    svgCaminho: 'assets/mi-no-coffee.svg',);
  static const kExercise = RecomendacaoMedica._(
    titulo: "Exercise",
    descricao: "Make more exercise",
    svgCaminho: 'assets/mi-make-exercise.svg',);
}