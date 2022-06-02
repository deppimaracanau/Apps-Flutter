import 'package:flutter/material.dart';
import 'package:clinica/models/medico.dart';
import 'package:clinica/models/especialidade.dart';
import 'package:clinica/models/paciente.dart';
import 'package:clinica/ui/home/widgets/homewidiget.dart';
import 'package:google_fonts/google_fonts.dart';

/// It's a list view with a fixed height, with a list of specialties, a list of
/// doctors, a text with a date and a grid view with a fixed height
/// `HomePage` is a `StatefulWidget` that creates a `HomePageState` when it's built
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

    /// It's creating a widget with a fixed height, with a text with a date,
    /// a text with a time, a text with a doctor's name, a text with a specialty
    /// and a
    /// text with a patient's name.
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          //-----------------------------------
          //----Itens do topo do corpo
          //-----------------------------------
          Home(
            espacamento: EdgeInsets.only(top: altura - 20),
          ),
          //-----------------------------------
          //----widget do topo do corpo
          //-----------------------------------

          /// It's creating a widget with a fixed height, with a text with a date,
          /// a text with a time, a text with a doctor's name, a text with a
          /// specialty and a
          /// text with a patient's name.
          AnimatedPositioned(
            duration: duracao,
            curve: Curves.fastOutSlowIn,
            top: 0,
            left: 0,
            right: 0,
            height: abrirAgenda ? altura + 280 : altura,
            child: CustomPaint(
              painter: Pintor(curveRadius: 30),

              /// It's creating a widget with a fixed height, with a text with a
              /// date,
              /// a text with a time, a text with a doctor's name, a text with a
              /// specialty and a
              /// text with a patient's name.
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

                  /// It's creating a text with a style.
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Text(
                      'Seu proximo compromisso',
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
                  /// It's creating a widget with a fixed height, with a text with a
                  /// date,
                  /// a text with a time, a text with a doctor's name, a text with a
                  /// specialty and a
                  /// text with a patient's name.
                  ProximoCompromisso(
                    altura: altura - 175,
                    margem: const EdgeInsets.symmetric(horizontal: 15),
                    agenda: proximoCompromisso,
                  ),
                  //--------------------------------
                  //------Detalhes do proximo compromisso
                  //--------------------------------
                  /// It's a widget that when pressed, it will open or close the
                  /// agenda.
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

                  /// It's a button that when pressed, it will open or close the
                  /// agenda.
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

  /// If the agenda is open, then close it, and if it's closed, then open it
  ///
  /// Args:
  ///   animationDuration (Duration): The duration of the animation.
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

/// It's a list view with a fixed height, with a list of specialties, a list of
/// doctors, a text with a date and a grid view with a fixed height
class Home extends StatelessWidget {
  const Home({
    Key? key,
    this.espacamento,
  }) : super(key: key);
  final EdgeInsetsGeometry? espacamento;

  @override
  Widget build(BuildContext context) {
    final tamanho = MediaQuery.of(context).size;
    final pacienteAtual = Paciente.pacienteAtual;
    final estiloDaSecao = GoogleFonts.poppins(
      fontSize: 18,
      color: CorDoApp.cDarkTeal,
      fontWeight: FontWeight.w600,
    );

    /// Creating a list view with a fixed height.
    return ListView(
      padding: espacamento,
      physics: const BouncingScrollPhysics(),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Especilidades',
            style: estiloDaSecao,
          ),
        ),
        //------------------------------------------
        //------Lista de especialidades
        //------------------------------------------
        const SizedBox(height: 10),

        /// Creating a list of specialties.
        SizedBox(
          height: MediaQuery.of(context).size.width * .27,
          child: ListView.builder(
            itemExtent: MediaQuery.of(context).size.width * .4,
            scrollDirection: Axis.horizontal,
            itemCount: Especialidade.especialidades.length,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemBuilder: (context, index) {
              //o segredo tá aqui n esquecer
              final categoria = Especialidade.especialidades[index];
              return Categoria(categoria: categoria);
            },
          ),
        ),
        const SizedBox(height: 20),

        /// Creating a text with a style.
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Médicos',
            style: estiloDaSecao,
          ),
        ),
        //---------------------------------
        //------Lista médicos
        //---------------------------------
        /// Creating a list of doctors.
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
              return CardMedico(medico: medico);
            },
          ),
        ),
        //--------------------------------------------
        //------Ultimos exames
        //--------------------------------------------
        /// Creating a text with a date.
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text.rich(
            TextSpan(
              text: 'Ultimos check up',
              children: [
                TextSpan(
                  text: '{$DateTime.now()}',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                )
              ],
            ),
            style: estiloDaSecao,
          ),
        ),
        //--------------------------------------------
        //------Quadro dos ultimos exames
        //--------------------------------------------
        /// Creating a grid view with a fixed height.
        SizedBox(
          height: tamanho.width * 1.1,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 10 / 4.5,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            itemCount: pacienteAtual.historicoMedico!.length,
            itemBuilder: (context, index) {
              final check = pacienteAtual.historicoMedico![index];
              return CardCheckup(check: check);
            },
          ),
        )
      ],
    );
  }
}
