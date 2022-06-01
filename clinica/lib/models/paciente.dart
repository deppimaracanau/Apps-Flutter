import 'package:clinica/models/agenda.dart';
import 'package:clinica/models/checkup.dart';
export 'agenda.dart';
export 'checkup.dart';

/// It's a class that contains all the information about a patient
class Paciente {
  const Paciente({
    this.nome,
    this.sobrenome,
    this.email,
    this.fotoCaminho,
    this.telefone,
    this.historicoMedico,
    this.historicoDeconsulta,
    this.proximaConsulta,
  });

  final String? nome;
  final String? sobrenome;
  final String? email;
  final String? fotoCaminho;
  final String? telefone;
  final List<DiagnosticoMedico>? historicoMedico;
  final List<Agenda>? historicoDeconsulta;
  final Agenda? proximaConsulta;

  /// A static final variable that is a Paciente object.
  static final pacienteAtual = Paciente(
    nome: 'Kevin',
    sobrenome: 'Melendez',
    email: 'kevinmdezhdez@gmail.com',
    fotoCaminho:
    'https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fG1lbnxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=500&q=60',
    historicoDeconsulta: Agenda.listCompromisso,
    proximaConsulta: Agenda.proximoCompromisso,
    telefone: '+52741137588',
    historicoMedico: const [
      DiagnosticoMedico(check: Checkup.peso, value: 149.7),
      DiagnosticoMedico(check: Checkup.altura, value: 170.7),
      DiagnosticoMedico(check: Checkup.colestterol, value: 200),
      DiagnosticoMedico(check: Checkup.eletrocardiograma, value: 60),
      DiagnosticoMedico(check: Checkup.pressao, value: 0.87),
      DiagnosticoMedico(check: Checkup.hemoglobina, value: 120),
      DiagnosticoMedico(check: Checkup.glicose, value: 89),
    ],
  );
}