import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'dataJson.dart';

void main() {
  runApp(const Estagio());
}

var link = ListDados.getData;

class Estagio extends StatelessWidget {
  const Estagio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                //scrollDirection: Axis.horizontal,
                itemCount: link.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    //height: 220,
                    width: double.maxFinite,
                    child: Card(
                      elevation: 5,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(
                                width: 2.0, color: Colors.lightGreen),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(7),
                          child: Stack(children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child: Stack(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 1, top: 5),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            avatar(link[index]),
                                            const Spacer(),
                                            nameChange(link[index]),
                                            const Spacer(
                                                //width: 10,
                                                ),
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            textSide(link[index])
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget avatar(data) {
    return Align(
      child: CircleAvatar(
        radius: 30.0,
        backgroundImage: AssetImage('${data['name']}'),
        backgroundColor: Colors.transparent,
      ),
      alignment: Alignment.topLeft,
    );
  }

  Widget nameChange(data) {
    return Align(
      alignment: Alignment.topRight,
      child: RichText(
        text: TextSpan(
          text: '${data['titulo']}',
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.green, fontSize: 20),
          children: <TextSpan>[
            TextSpan(
              text: '\n${data['subtitulo']}',
              style: TextStyle(
                  color: data['changeColor'],
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  // Widget changeIcon(data) {
  //   return Align(
  //     alignment: Alignment.topRight,
  //     child: data['titulo'].contains('-')
  //         ? Icon(
  //             Icons.arrow_drop_down,
  //             color: data['changeColor'],
  //             size: 30,
  //           )
  //         : Icon(
  //             Icons.download_for_offline_outlined,
  //             color: data['changeColor'],
  //             size: 30,
  //           ),
  //   );
  // }

  Widget textSide(data) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Row(
          children: <Widget>[
            Link(
              target: LinkTarget.self,
              uri: Uri.parse('${data['link']}'),
              builder: (context, followLink) {
                return GestureDetector(
                  child: RichText(
                    //textAlign: TextAlign.left,
                    text: TextSpan(
                      text: '\nDownload do documento',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        //fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  onTap: followLink,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
