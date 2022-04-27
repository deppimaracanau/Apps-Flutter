import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(const LinkApp());

class LinkApp extends StatelessWidget {
  const LinkApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LinkPage(),
    );
  }
}

class LinkPage extends StatelessWidget {
  const LinkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Documentos do estágio'),
        backgroundColor: Colors.lightGreen,
      ),
      body: ListView(
        children: const <Widget>[
          Card(
            child: ListTile(
              title: Text(' Início de estágio'),
              dense: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(size: 72.0),
              title: Text('Cadastro de empresas'),
              subtitle: Text('download'),
              trailing: Icon(Icons.download_for_offline),
              isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(size: 72.0),
              title: Text('Ficha de Matrícula'),
              subtitle: Text('download'),
              trailing: Icon(Icons.download_for_offline),
              isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(size: 72.0),
              title:
                  Text('Termo de compromisso de estágio e plano de atividades'),
              subtitle: Text('download'),
              trailing: Icon(Icons.download_for_offline),
              isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Fase intermedirária'),
              dense: true,
            ),
          ),
          Card(
              child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/heathjoker.jpg'),
          )),
        ],
      ),
    );
  }
}
