import 'dart:isolate';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dataJson.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDownloader.initialize(
      debug: true // optional: set false to disable printing logs to console
      );
  runApp(const Estagio());
}

var link = ListDados.getData;

class Estagio extends StatelessWidget {
  const Estagio({Key? key}) : super(key: key);

  void initState() {}

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //remove o texto debug no canto superior
      title: 'Estagio',
      theme: ThemeData(
        textTheme: GoogleFonts.sourceCodeProTextTheme(),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Estagioapp(
        title: 'App para baixar documentos do estágio',
      ),
    );
  }
}

/// `Estagio` is a `StatefulWidget` that takes a `title` and creates a
/// `_EstagioState` to manage its state
class Estagioapp extends StatefulWidget {
  const Estagioapp({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Estagioapp> createState() => _EstagioappState();
}

//teste
/// We register a port with the name "downloading" and listen to it for messages
class _EstagioappState extends State<Estagioapp> {
  int progress = 0;
  final ReceivePort _receivePort = ReceivePort();

  static downloadingCallback(id, status, progress) {
    SendPort? sendPort = IsolateNameServer.lookupPortByName("downloading");

    sendPort?.send([id, status, progress]);
  }

  @override

  /// > We register a port with the name "downloading" and listen to it for messages
  void initState() {
    super.initState();

    IsolateNameServer.registerPortWithName(
        _receivePort.sendPort, "downloading");

    _receivePort.listen((message) {
      setState(() {
        progress = message[2];
      });

      if (kDebugMode) {
        print(progress);
      }
    });

    FlutterDownloader.registerCallback(downloadingCallback);
  }

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    return Container(
      /// The above code is creating a list of cards that are being populated by
      /// the data from the link.dart file.
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(145, 131, 222, 1),
            Color.fromARGB(220, 220, 220, 1),
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
              const SizedBox(
                height: 25,
              ),

              SizedBox(
                height: topPadding,
              ),

              const SizedBox(
                height: 5,
              ),

              const AnimatedImage(),
              Container(), //<= chamando a animação
              /// The above code is creating a list of cards.
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
                              top:
                                  BorderSide(width: 2.0, color: Colors.black12),
                            ),
                            color: Colors.white38,
                          ),

                          /// This is a widget that is being used to create a list
                          /// of cards.
                          child: Padding(
                            padding: const EdgeInsets.all(7),
                            child: Stack(children: <Widget>[
                              Align(
                                alignment: Alignment.topLeft,
                                child: Stack(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 1, top: 5),
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
      ),
    );
  }
}

//avatar

/// `return` a `CircleAvatar` with a `radius` of `60.0` and a `backgroundImage` of
/// `AssetImage('${data['name']}')`
///
/// Args:
///   data: The data that is passed to the widget.
///
/// Returns:
///   A widget that displays an image.
Widget avatar(data) {
  return Align(
    alignment: Alignment.topLeft,
    child: CircleAvatar(
      radius: 60.0,
      backgroundImage: AssetImage('${data['name']}'),
      backgroundColor: Colors.transparent,
    ),
  );
}

//bloco do texto dentro dos cards

/// It returns an Align widget that contains a RichText widget that contains a
/// TextSpan widget that contains a TextSpan widget that contains a TextSpan widget
///
/// Args:
///   data: A Map with the following keys:
///
/// Returns:
///   A widget that is aligned to the top right of the screen.
Widget nameChange(data) {
  return Align(
    alignment: Alignment.topRight,
    child: RichText(
      text: TextSpan(
        text: '${data['subtitulo']}',
        style: const TextStyle(
            fontFamily: 'SourceSansPro-Regular',
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
            fontSize: 17),
        children: <TextSpan>[
          TextSpan(
            text: '\n${data['titulo']}',
            style: TextStyle(
              color: data['changeColor'],
              fontFamily: 'Source Code Pro',
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}

//bloco do texto e link para download do documentos

/// It's a function that returns a widget that aligns a widget to the left, and then
/// adds padding to the left of the widget, and then adds a row of widgets, and then
/// adds a button that downloads a file from a link
///
/// Args:
///   data: The data that will be used to fill the card.
///
/// Returns:
///   A widget that is aligned to the left and has a button that downloads a file.
Widget textSide(data) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 120.0),
      child: Row(
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              onSurface: Colors.black,
              elevation: 20,
              shadowColor: Colors.red,
            ),
            child: const Text('Download do documento'),
            onPressed: () async {
              final status = await Permission.storage.request();
              if (status.isGranted) {
                final externalDir = await getExternalStorageDirectory();

                FlutterDownloader.enqueue(
                  url: data['link'],
                  savedDir: externalDir!.path,
                  fileName: 'download',
                  showNotification: true,
                  openFileFromNotification: true,
                );
              } else {
                if (kDebugMode) {
                  print('erro no download!');
                }
              }
            },
          ),
          const SizedBox(height: 40),
        ],
      ),
    ),
  );
}

//bloco de animação

/// `AnimatedImage` is a stateful widget that displays an animated image
class AnimatedImage extends StatefulWidget {
  const AnimatedImage({Key? key}) : super(key: key);

  @override
  AnimatedImageState createState() => AnimatedImageState();
}

/// `AnimatedImageState` is a `State` class that uses
/// `SingleTickerProviderStateMixin` to provide a `Ticker` for the
/// `AnimationController` that is used to animate the `Image` widget
class AnimatedImageState extends State<AnimatedImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..repeat(reverse: true);

  late final Animation<Offset> _animation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(2.30, -0.30),
  ).animate(
    CurvedAnimation(parent: _controller, curve: Curves.easeInCirc),
  );

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
        const SizedBox(height: 5),
        SlideTransition(
          position: _animation,
          child: Image.asset('assets/rocket.png'),
        ),
      ],
    );
  }
}
