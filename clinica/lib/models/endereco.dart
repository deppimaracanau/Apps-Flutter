class Endereco {

  const Endereco({
    this.estado,
    this.cidade,
    this.rua,
    this.numero,
    this.cep,
  });

  final String? cidade;
  final String? estado;
  final String? rua;
  final String? numero;
  final String? cep;

  String getEnderecoCompleto() {
    return "$numero $rua, $cidade $cep";
  }

  static const sanFransisco = Endereco(
    estado: 'California',
    cidade: 'San Fransisco, CA',
    numero: '1000',
    rua: 'Commercial rua',
    cep: '94016',);
  static const springfield = Endereco(
    estado: 'Ohio',
    cidade: 'Springfield, OH',
    rua: 'High rua',
    numero: '501',
    cep: '45506',);
  static const rothschild = Endereco(
    estado: 'Wisconsin',
    cidade: 'Rothschild, WI',
    rua: 'Imperial Ave',
    numero: '501',
    cep: '54474',);
  static const midwestcidade = Endereco(
    estado: 'Oklahoma',
    cidade: 'Midwest cidade, OK',
    rua: 'National Ave',
    numero: '8121',
    cep: '73110',);
  static const socorro = Endereco(
    estado: 'Nuevo Mexico',
    cidade: 'Socorro, NM',
    rua: 'National Ave',
    numero: '1202',
    cep: '87801',);
  static const brownwood = Endereco(
    estado: 'Texas',
    cidade: 'Brownwood, TX',
    rua: 'Burnett Rd',
    numero: '1501',
    cep: '76801',);
}