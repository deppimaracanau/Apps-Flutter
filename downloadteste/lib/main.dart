import 'botao.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:downloadteste/botao.dart';
import 'dataJson.dart';

void main() {
  runApp(const MyApp());
}

var link = ListDados.getData;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
      home: const MyHomePage(
        title: 'App para baixar documentos do estágio',
      ),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    return Container(
      /// The above code is creating a list of cards that are being populated by
      /// the data from the link.dart file.
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Colors.green,
            Colors.red,
            Colors.white30,

          ],
          tileMode: TileMode.mirror,
          // begin: Alignment.topCenter,
          // end: Alignment.bottomCenter,
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



Widget textSide(data) {
  return const Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: EdgeInsets.only(left: 120.0),
      child: Botao(data, url)
    ),
  );
}

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