import 'package:clinica/ui/home/widgets/homewidiget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:clinica/ui/medicos/medicos.dart';
import 'package:clinica/ui/home/home.dart';
import 'package:clinica/ui/widget/barradenavegacao.dart';
import 'package:clinica/cores/cordoapp.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const ClinicaAppicalApp());
}

class ClinicaAppicalApp extends StatelessWidget {
  const ClinicaAppicalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    });
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[50],
        primaryColor: CorDoApp.kBlue,
        primaryColorLight: CorDoApp.kLightBlue,
        primaryColorDark: CorDoApp.kDarkBlue,
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
  int indiceDaPagina = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OverflowBox(
        alignment: Alignment.topCenter,
        maxHeight: MediaQuery.of(context).size.height,
        child: AnimatedSwitcher(
          duration: kThemeAnimationDuration,
          child: const [
            HomePage(),
            Medico(),
            Scaffold(body: Center(child: Text("History"))),
            Scaffold(body: Center(child: Text("Urgency"))),
          ][indiceDaPagina],
        ),
      ),
      bottomNavigationBar: BarraDeNavegacao(
        indiceAtual: indiceDaPagina,
        onTap: (value) => setState(() {
          indiceDaPagina = value;
        }),
        itens: const [
          ItemBarraDeNavegacao(
            rotulo: 'Home',
            selecaoIcon: Icons.home_rounded,
          ),
          ItemBarraDeNavegacao(
            rotulo: 'Doctors',
            selecaoIcon: FontAwesomeIcons.user,
            cores: Color(0xFF06F884),),
          ItemBarraDeNavegacao(
            rotulo: 'History',
            selecaoIcon: Icons.history,
            cores: Colors.purpleAccent,),
          ItemBarraDeNavegacao(
            rotulo: 'Urgency',
            selecaoIcon: Icons.notifications,
            cores: Colors.redAccent,),
        ],
      ),
    );
  }
}





























