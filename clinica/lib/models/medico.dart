import 'package:clinica/models/especialidade.dart';
import 'package:clinica/models/endereco.dart';

/// It creates a class called Medico.
class Medico {

  /// A constructor.
  const Medico({
    this.nome,
    this.especialidade,
    this.xpAnos,
    this.pacientes,
    this.endereco,
    this.avaliacao,
    this.curtidas,
    this.comentarios,
    this.fotoPng,
    this.fotoCaminho,
  });

  /// A constructor.
  final String? nome;
  final Especialidade? especialidade;
  final int? pacientes;
  final double? avaliacao;
  final int? curtidas;
  final int? xpAnos;
  final int? comentarios;
  final String? fotoPng;
  final String? fotoCaminho;
  final Endereco? endereco;


  /// Creating a new instance of the class Medico.
  static const  drRichard = Medico(
    nome: 'Richard Smith',
    fotoCaminho:
    'https://images.unsplash.com/photo-1582750433449-648ed127bb54?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    especialidade: Especialidade.cCardiologista,
    comentarios: 120,
    pacientes: 310,
    curtidas: 220,
    endereco: Endereco.sanFransisco,
    xpAnos: 2010,
    avaliacao: 4.5,
  );

  static const drLiliana = Medico(
    nome: 'Liliana Mondragon',
    fotoCaminho:
    'https://images.unsplash.com/photo-1591604021695-0c69b7c05981?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    especialidade: Especialidade.cDermatologista,
    comentarios: 120,
    pacientes: 310,
    curtidas: 220,
    endereco: Endereco.sanFransisco,
    xpAnos: 2010,
    avaliacao: 4.5,
  );
  static const drJulissa = Medico(
    nome: 'Julissa Towers',
    fotoCaminho:
    'https://images.unsplash.com/photo-1527613426441-4da17471b66d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    especialidade: Especialidade.cPediatra,
    comentarios: 120,
    pacientes: 310,
    curtidas: 220,
    endereco: Endereco.sanFransisco,
    xpAnos: 2010,
    avaliacao: 4.5,
  );

  static const drEdward = Medico(
    nome: 'Edward Ghirca',
    fotoCaminho:
    'https://images.unsplash.com/photo-1580281658626-ee379f3cce93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    especialidade: Especialidade.cOrtopedista,
    comentarios: 120,
    pacientes: 310,
    curtidas: 220,
    endereco: Endereco.sanFransisco,
    xpAnos: 2010,
    avaliacao: 4.5,
  );
  static const drGuido = Medico(
    nome: 'Guido Mista',
    fotoCaminho:
    'https://images.unsplash.com/photo-1576669801775-ff43c5ab079d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    especialidade: Especialidade.cCardiologista,
    comentarios: 120,
    pacientes: 310,
    curtidas: 220,
    endereco: Endereco.sanFransisco,
    xpAnos: 2010,
    avaliacao: 4.5,
  );

  /// Creating a list of doctors.
  static const listaMedico = [
    Medico(
      nome: 'Iris Bohorquez',
      especialidade: Especialidade.cOrtopedista,
      comentarios: 203,
      fotoPng: 'https://images.pexels.com/photos/8942128/pexels-photo-8942128.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      endereco: Endereco.brownwood,
      xpAnos: 2009,
      curtidas: 359,
      avaliacao: 4.7,
      pacientes: 402,
    ),
    Medico(
      nome: 'Namor Scoutia',
      especialidade: Especialidade.cUrologista,
      comentarios: 193,
      fotoPng:
      'https://images.pexels.com/photos/6234633/pexels-photo-6234633.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      endereco: Endereco.brownwood,
      xpAnos: 2000,
      curtidas: 301,
      avaliacao: 4.5,
      pacientes: 320,
    ),
    Medico(
      nome: 'Alex Gospel',
      especialidade: Especialidade.cCardiologista,
      comentarios: 210,
      xpAnos: 2012,
      fotoPng:
      'https://br.freepik.com/fotos-gratis/contrato-de-cabelos-castanhos-corporativa-medico-sofisticado_1078106.htm#query=medicos&position=2&from_view=search',
      endereco: Endereco.brownwood,
      curtidas: 324,
      avaliacao: 4.6,
      pacientes: 352,
    ),
    Medico(
      nome: 'Robert Peace',
      especialidade: Especialidade.cEndocrinologista,
      comentarios: 173,
      fotoPng:
      'https://images.pexels.com/photos/6762862/pexels-photo-6762862.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      endereco: Endereco.brownwood,
      xpAnos: 2010,
      curtidas: 239,
      avaliacao: 4.8,
      pacientes: 298,
    )
  ];

}