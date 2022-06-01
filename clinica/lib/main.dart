import 'package:clinica/ui/home/widgets/homewidiget.dart';
import 'package:clinica/ui/medicos/paginamedico.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:clinica/ui/home/home.dart';
import 'package:clinica/ui/widgets/barradenavegacao.dart';
import 'package:clinica/cores/cordoapp.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const ClinicaApp());
}

class ClinicaApp extends StatelessWidget {
  const ClinicaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //removida a ! instance
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    });
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[50],
        primaryColor: CorDoApp.cBlue,
        primaryColorLight: CorDoApp.cLightBlue,
        primaryColorDark: CorDoApp.cDarkBlue,
        textTheme: GoogleFonts.poppinsTextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.pinkAccent,
        ),
      ),
      home: _MainPage(),);
  }
}

class _MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<_MainPage> {
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OverflowBox(
        alignment: Alignment.topCenter,
        maxHeight: MediaQuery.of(context).size.height,
        child: AnimatedSwitcher(
          duration: kThemeAnimationDuration,
          child: const [
            Home(),
            PaginaMedico(),
            Scaffold(body: Center(child: Text("History"))),
            Scaffold(body: Center(child: Text("Urgency"))),
          ][indexPage],
        ),
      ),
      bottomNavigationBar: BarraDeNavegacao(
        indiceAtual: indexPage,
        onTap: (value) => setState(() {
          indexPage = value;
        }),
        items: const [
          ItemDaBarraDeNavegacao(
            rotulo: 'Home',
            selecaoIcon: Icons.home_rounded,
          ),
          ItemDaBarraDeNavegacao(
            rotulo: 'Médicos',
            selecaoIcon: FontAwesomeIcons.user,
            cores: Color(0xFF06F884),),
          ItemDaBarraDeNavegacao(
            rotulo: 'Histórico',
            selecaoIcon: Icons.history,
            cores: Colors.purpleAccent,),
          ItemDaBarraDeNavegacao(
            rotulo: 'Urgência',
            selecaoIcon: Icons.notifications,
            cores: Colors.redAccent,),
        ],
      ),
    );
  }
}





























