import 'dart:io';

import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());

  List<Link> titulos = [Link( 'Cadastro de empresas',
  'Ficha de Matrícula',
  'Termo de compromisso de estágio e plano de atividades','')];


/*
  Link link = new Link(
      'Inicio', 'cadastro', 'encurtador.com.br/tGHW1', '/assets/mario.png');
  link.mostrar();

 */
}

class Link {
  String titulo = '';
  String subtitulo = '';
  String texto = '';
  String endereco = '';
  String imagem = '';

  Link(this.titulo, this.subtitulo, this.endereco, this.imagem);

  void mostrar() {
    print(
        'titulo $titulo,subtitulo $subtitulo, endereco $endereco, image $imagem');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Formulários'),
        ),
        body: buildListView(),
      ),
    );
  }
}
  buildListView() {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            child: Image.asset('assets/cogumelo.png'),
          ),
          title: Text('Início de estágio'),
          subtitle: Text('Cadastro de empresas'),
          trailing: Icon(Icons.download_for_offline_rounded),
          onLongPress: () {
            print('ok');
          },
        ), ListTile(
          leading: CircleAvatar(
            child: Image.asset('assets/cogumelo.png'),
          ),
          title: Text('Início de estágio'),
          subtitle: Text('Cadastro de empresas'),
          trailing: Icon(Icons.download_for_offline_rounded),
          onLongPress: () {
            print('ok');
          },
        ), ListTile(
          leading: CircleAvatar(
            child: Image.asset('assets/cogumelo.png'),
          ),
          title: Text('Início de estágio'),
          subtitle: Text('Cadastro de empresas'),
          trailing: Icon(Icons.download_for_offline_rounded),
          onLongPress: () {
            print('ok');
          },
        )
      ],
    );
  }

