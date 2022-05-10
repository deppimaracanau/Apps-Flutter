import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'dataJson.dart';

void main() {
  runApp(const MyApp());
}
var link = ListDados.getData;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //remove o texto debug no canto superior
      title: 'Estagio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(145, 131, 222, 1),
            Color.fromARGB(160, 148, 227, 1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
//teste
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: const Icon(Icons.notifications),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.extension),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Text.rich(
                TextSpan(
                  text: 'Documentos de estágio',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xFFFBE9E7)),
                ),
                style: TextStyle(fontSize: 30),
              ),
              //teste
              SizedBox(
                height: topPadding,
              ),
              const SizedBox(
                height: 5,
              ),
              const AnimatedImage(), //<= chamando a animação

              //teste

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
                                    width: 2.0, color: Colors.black12),
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
             //teste
            ],

          ),
        ),
      ),
    );
  }
}

//avatar

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

//bloco do texto dentro dos cards

Widget nameChange(data) {
  return Align(
    alignment: Alignment.topRight,
    child: RichText(
      text: TextSpan(
        text: '${data['titulo']}',
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.blueGrey, fontSize: 20),
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

//bloco do texto e link para download do documentos

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
                  text: const TextSpan(
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


//bloco da animação

class AnimatedImage extends StatefulWidget {
  const AnimatedImage({Key? key}) : super(key: key);

  @override
  _AnimatedImageState createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..repeat(reverse: true);

  late final Animation<Offset> _animation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0, 0.08),
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/nuvens.png'),
        SlideTransition(
          position: _animation,
          child: Image.asset('assets/rocket.png'),
        ),
      ],
    );
  }
}
