import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dataJson.dart';

void main() {
  runApp(const Dashboard());
}

var link = Link.getData;


class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

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
                          height: 220,
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
                                    alignment: Alignment.centerRight,
                                    child: Stack(
                                      children: <Widget>[
                                        Padding(
                                            padding: const EdgeInsets.only(left: 10, top: 5),
                                            child: Column(
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    allIcon(link[index]),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    nameSymbol(link[index]),
                                                    const Spacer(),
                                                    nameChange(link[index]),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    changeIcon(link[index]),
                                                    const SizedBox(
                                                      width: 20,
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    textSide(link[index])
                                                  ],
                                                )
                                              ],
                                            ))
                                      ],
                                    ),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            )));
  }
  Widget allIcon(data) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Icon(
            data['icon'],
            color: data['iconColor'],
            size: 40,
          )),
    );
  }
  Widget nameSymbol(data) {
    return Align(
      child: CircleAvatar(
        radius: 30.0,
        child: Image.asset('${data['name']}'),
        backgroundColor: Colors.transparent,

        // child: RichText(
        //   text: TextSpan(
        //     text: '${data['name']}',
        //     style: const TextStyle(
        //         fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        //     children: <TextSpan>[
        //       TextSpan(
        //           text: '\n${data['symbol']}',
        //           style: const TextStyle(
        //               color: Colors.grey,
        //               fontSize: 15,
        //               fontWeight: FontWeight.bold)),
        //     ],
        //   ),
        // ),

      ),
      alignment: Alignment.centerLeft,
    );
  }
  Widget nameChange(data) {
    return Align(
      alignment: Alignment.topRight,
      child: RichText(
        text: TextSpan(
          text: '${data['change']}',
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.green, fontSize: 20),
          children: <TextSpan>[
            TextSpan(
                text: '\n${data['changeValue']}',
                style: TextStyle(
                    color: data['changeColor'],
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
  Widget changeIcon(data) {
    return Align(
        alignment: Alignment.topRight,
        child: data['change'].contains('-')
        ? Icon(
      Icons.arrow_drop_down,
      color: data['changeColor'],
      size: 30,
    )
        : Icon(
      Icons.arrow_drop_up,
      color: data['changeColor'],
      size: 30,
    ));
  }
  Widget textSide(data) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Row(
          children: <Widget>[
            TextButton(
            style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {},

            child: RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                text: '\n${data['link']}',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 35,
                ),
                children: const <TextSpan>[
                  TextSpan(
                      text: '\nDownload',
                      style: TextStyle(
                          color: Colors.grey,
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}


