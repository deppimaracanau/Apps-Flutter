//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App estagio',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();

  Link linkcreateState() => Link();

  Subtitulo subcreateState() => Subtitulo();

  Images imagecreateState() => Images();

}

class Subtitulo {
  List<String> titulo = [

    'Cadastro de empresas',
    'Ficha de Matrícula',
    'Termo de compromisso de estágio e plano de atividades',
    'Relatório diário de estágio',
    'Relatório periódico de estágio',
    'Termo aditivo de horas',
    'Termo aditivo de tempo',
    'Ficha de avaliação do estagiário',
    'Relatório Final de Estágio',
    'Requerimento Conclusão Estágio',
    'Declaração de Conclusão de Estágio',
    'Termo de Rescisão de Contrato de Estágio',
    'Ficha de avaliação do estagiário',
    'Requerimento Conclusão Estágio',
    'Orientação para Relatório Final de Estágio',
    'Declaração de Conclusão de Estágio',
    'Termo de Rescisão de Contrato de Estágio'

  ];


  List<String> titulo

  get titulo {
    return {...titulo};
  }
}

class Link {
  List<String> links = [

    'https://ifce.edu.br/maracanau/menu/setor-de-estagios/subs-aquirvos-10_06/cadastro-de-empresas-1.doc',

    'https://ifce.edu.br/maracanau/menu/setor-de-estagios/subs-aquirvos-10_06/ficha-de-matricula.doc',

    'https://ifce.edu.br/maracanau/menu/setor-de-estagios/termo-de-compromisso-de-estagio-e-plano-de-atividades-3-1.docx',

    'https://ifce.edu.br/maracanau/menu/setor-de-estagios/subs-aquirvos-10_06/relatorio-diario-de-atividades-2.doc',

    'https://ifce.edu.br/maracanau/menu/setor-de-estagios/subs-aquirvos-10_06/relatorio-periodico-de-estagio.doc',

    'https://ifce.edu.br/maracanau/menu/setor-de-estagios/subst-de-arquivos-30.05/termo-aditivo-de-alteracao-de-horario.odt',

    'https://ifce.edu.br/maracanau/menu/setor-de-estagios/subst-de-arquivos-30.05/termo-aditivo-de-tempo.odt',

    'https://ifce.edu.br/maracanau/menu/setor-de-estagios/subst-de-arquivos-30.05/ficha-de-avaliacao-do-estagiario_04_06_19.odt',

    'https://ifce.edu.br/maracanau/menu/setor-de-estagios/subst-de-arquivos-30.05/relatorio-final-de-estagio-dos-cursos-tecnicos.odt',

    'https://ifce.edu.br/maracanau/menu/setor-de-estagios/subs-aquirvos-10_06/requerimento-de-conclusao-da-disciplina-de-estagio-obrigatorio.doc',

    'https://ifce.edu.br/maracanau/menu/setor-de-estagios/subs-aquirvos-10_06/declaracao-de-conclusao-de-estagio-13.doc',

    'https://ifce.edu.br/maracanau/menu/setor-de-estagios/arquivo10_07/termo-de-rescisao-de-contrato-de-estagio.doc',

    'https://ifce.edu.br/maracanau/menu/setor-de-estagios/subs-aquirvos-10_06/ficha-de-avaliacao-do-estagiario.doc',

    'https://ifce.edu.br/maracanau/menu/setor-de-estagios/subs-aquirvos-10_06/requerimento-de-conclusao-da-disciplina-de-estagio-obrigatorio.doc',

    'https://ifce.edu.br/maracanau/menu/setor-de-estagios/subs-aquirvos-10_06/orientacao-para-relatorio-para-relatorio-final-de-estagios-dos-cursos-superiores-13.doc',

    'https://ifce.edu.br/maracanau/menu/setor-de-estagios/subs-aquirvos-10_06/declaracao-de-conclusao-de-estagio-13.doc',

    'https://ifce.edu.br/maracanau/menu/setor-de-estagios/arquivo10_07/termo-de-rescisao-de-contrato-de-estagio.doc',
  ];
  List<String> links

  get links {
    return {...links};
  }
}

class Images {
  List<String> images = [
    "assets/backtofuture.jpg",
    "assets/cogumelo.png",
    "assets/heathjoker.jpg",
    "assets/mario.jpg",
  ];

  get images {
    return {...images};
  }
}


class _MyHomePageState extends State<MyHomePage> {


  get titulo => this.titulo;

  get links => this.links;

  get images => this.images;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de Documentos'),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(images[index]),),
                title: Text(titulo[index]),
                subtitle: Text(links[index]),
                trailing: Icon(Icons.download_for_offline_rounded),
                onLongPress: () {
                  print('ok');
                },
              ),
            );
          },
          itemCount: this.images.length,
          shrinkWrap: true,
          padding: EdgeInsets.all(5),
          scrollDirection: Axis.vertical,
        )
    );
  }
}