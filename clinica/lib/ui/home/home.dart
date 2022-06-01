import 'package:flutter/material.dart';
import 'package:clinica/models/medico.dart';
import 'package:clinica/models/especialidade.dart';
import 'package:clinica/models/paciente.dart';
import 'package:clinica/ui/home/widgets/homewidiget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  bool abrirAgenda = false;
  bool mostrarDetalhesAgenda = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const duracao = Duration(milliseconds: 400);
    final altura = (size.width * .75).clamp(310.0, 340.0);
    final proximoCompromisso = Agenda.proximoCompromisso;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          //-----------------------------------
          //----Itens do topo do corpo
          //-----------------------------------
          _BodyHome(
            contentPadding: EdgeInsets.only(top: altura - 20),
          ),
          //-----------------------------------
          //----widget do topo do corpo
          //-----------------------------------
          AnimatedPositioned(
            duration: duracao,
            curve: Curves.fastOutSlowIn,
            top: 0,
            left: 0,
            right: 0,
            height: abrirAgenda ? altura + 280 : altura,
            child: CustomPaint(
              painter: Pintor(curveRadius: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 10),
                  //---------------------------------------------
                  //------Botão de busca e imagem
                  //---------------------------------------------
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Busca(),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Text(
                      'Your next appointment',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  //----------------------------------
                  //-----Card Próximo compromisso
                  //----------------------------------
                  ProximoCompromisso(
                    altura: altura - 175,
                    margem: const EdgeInsets.symmetric(horizontal: 15),
                    agenda: proximoCompromisso,
                  ),
                  //--------------------------------
                  //------Detalhes do proximo compromisso
                  //--------------------------------
                  AnimatedSwitcher(
                    duration: kThemeAnimationDuration,
                    child: mostrarDetalhesAgenda
                        ? GestureDetector(
                      onVerticalDragUpdate: (details) {
                        if (details.primaryDelta! < -7) {
                          setState(() {
                            mostrarDetalhesAgenda = false;
                          });
                          Future.delayed(kThemeAnimationDuration, () {
                            setState(() {
                              abrirAgenda = false;
                            });
                          });
                        }
                      },
                      child: DetalhesDaAgenda(
                        agenda: proximoCompromisso,
                      ),
                    )
                        : const SizedBox(),
                  ),
                  const Spacer(),
                  Center(
                    child: IconButton(
                      onPressed: () => _onTapExpandButton(duracao),
                      icon: Icon(
                        abrirAgenda
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                        size: 30,
                        color: Colors.white70,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void _onTapExpandButton(Duration animationDuration) {
    if (abrirAgenda) {
      setState(() {
        mostrarDetalhesAgenda = !mostrarDetalhesAgenda;
      });
      Future.delayed(kThemeAnimationDuration, () {
        setState(() {
          abrirAgenda = mostrarDetalhesAgenda;
        });
      });
    } else {
      setState(() {
        abrirAgenda = !abrirAgenda;
      });
      Future.delayed(animationDuration, () {
        setState(() {
          mostrarDetalhesAgenda = abrirAgenda;
        });
      });
    }
  }
}

class _BodyHome extends StatelessWidget {
  const _BodyHome({
    Key? key,
    this.contentPadding,
  }) : super(key: key);
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final currentPatient = Paciente.pacienteAtual;
    final sectionStyle = GoogleFonts.poppins(
      fontSize: 18,
      color: CorDoApp.cDarkTeal,
      fontWeight: FontWeight.w600,
    );
    return ListView(
      padding: contentPadding,
      physics: const BouncingScrollPhysics(),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Especilidades',
            style: sectionStyle,
          ),
        ),
        //------------------------------------------
        //------Lista de especialidades
        //------------------------------------------
        const SizedBox(height: 10),
        SizedBox(
          height: MediaQuery.of(context).size.width * .27,
          child: ListView.builder(
            itemExtent: MediaQuery.of(context).size.width * .4,
            scrollDirection: Axis.horizontal,
            itemCount: Especialidade.categories.length,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemBuilder: (context, index) {
              final especialidade = Especialidade.categories[index];
              return Especialidade(especialidade: especialidade);
            },
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Top doctors',
            style: sectionStyle,
          ),
        ),
        //---------------------------------
        //------TOP DOCTORS LIST
        //---------------------------------
        SizedBox(
          height: 180,
          child: ListView.builder(
            itemExtent: 320,
            physics: const BouncingScrollPhysics(),
            itemCount: Medico.listaMedico.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            itemBuilder: (context, index) {
              final medico = Medico.listaMedico[index];
              return Medico(medico: medico);
            },
          ),
        ),
        //--------------------------------------------
        //------Ultimos exames
        //--------------------------------------------
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text.rich(
            TextSpan(
              text: 'Ultimos check up',
              children: [
                TextSpan(
                  text: ' (2022 - Ago - 12)',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                )
              ],
            ),
            style: sectionStyle,
          ),
        ),
        //--------------------------------------------
        //------Quadro dos ultimos exames
        //--------------------------------------------
        SizedBox(
          height: size.width * 1.1,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 10 / 4.5,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            itemCount: currentPatient.medicalChecks!.length,
            itemBuilder: (context, index) {
              final checkup = currentPatient.medicalChecks![index];
              return MedicalCheckCard(medicalCheck: medicalCheck);
            },
          ),
        )
      ],
    );
  }
}