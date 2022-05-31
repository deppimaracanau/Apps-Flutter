import 'package:clinica/models/agenda.dart';
import 'package:clinica/models/checkup.dart
export 'agenda.dart.dart';
export 'checkup.dart.dart';

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
  final List<MedicalCheck>? historicoMedico;
  final List<Agenda>? historicoDeconsulta;
  final Agenda? proximaConsulta;

  static final currentPatient = Paciente(
    nome: 'Kevin',
    sobrenome: 'Melendez',
    email: 'kevinmdezhdez@gmail.com',
    fotoCaminho:
    'https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fG1lbnxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=500&q=60',
    historicoDeconsulta: Agenda.listAppointment,
    proximaConsulta: Agenda.proximaConsulta,
    telefone: '+52741137588',
    historicoMedico: const [
      MedicalCheck(check: TypeCheck.peso, value: 149.7),
      MedicalCheck(check: TypeCheck.altura, value: 170.7),
      MedicalCheck(check: TypeCheck.colesterol, value: 200),
      MedicalCheck(check: TypeCheck.eletrocardiograma, value: 60),
      MedicalCheck(check: TypeCheck.pressao, value: 0.87),
      MedicalCheck(check: TypeCheck.hemoglobina, value: 120),
      MedicalCheck(check: TypeCheck.glicose, value: 89),
    ],
  );
}