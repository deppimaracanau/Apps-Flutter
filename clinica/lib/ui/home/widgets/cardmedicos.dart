import 'package:cached_network_image/cached_network_image.dart';
import 'package:clinica/models/medico.dart';
import 'package:clinica/ui/home/widgets/homewidiget.dart';
import 'package:flutter/material.dart';
import 'package:clinica/cores/cordoapp.dart';

import '../../../models/especialidade.dart';

/// It creates a stack with two widgets
class CardMedico extends StatelessWidget {
  const CardMedico({
    Key? key,
    required this.medico,
  }) : super(key: key);

  final Medico medico;

  @override
  /// It creates a stack with two widgets
  ///
  /// Args:
  ///   context (BuildContext): The context of the widget.
  ///
  /// Returns:
  ///   A stack with two widgets.
  Widget build(BuildContext context) {
    /// It creates a stack with two widgets.
    return Stack(
      children: <Widget>[
        //--------------------------------------------
        //------Curtidas,opniões e mensagens
        //-------------------------------------------
        _FundoBranco(
          medico: medico,
        ),
        Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            height: 125,
            child: Stack(
              children: <Widget>[
                //----------------------------------
                //-----Fundo azul
                //---------------------------------
                /// It creates a container with a gradient background and a border
                /// radius.
                Container(
                  width: 280,
                  margin: const EdgeInsets.only(top: 40),
                  padding: const EdgeInsets.only(
                    left: 120,
                    bottom: 5,
                    right: 5,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [
                        CorDoApp.cLightBlue,
                        CorDoApp.cBlue,
                      ],
                    ),
                  ),
                  child: _InformacaoMedico(medico: medico),
                ),
                //-----------------------------
                //------imagem
                //-----------------------------
                /// Creating a widget that will be positioned at the bottom of the
                /// screen.
                Positioned(
                  bottom: 0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: medico.fotoPng!,
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(Colors.white60),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

/// It creates a column with three widgets
class _InformacaoMedico extends StatelessWidget {
  const _InformacaoMedico({
    Key? key,
    required this.medico,
  }) : super(key: key);

  final Medico medico;

  @override
  /// It creates a column with three widgets
  ///
  /// Args:
  ///   context (BuildContext): The context of the widget.
  ///
  /// Returns:
  ///   A column with three widgets.
  Widget build(BuildContext context) {
    final countTextStyle = TextStyle(
      color: Colors.white.withOpacity(.8),
      fontWeight: FontWeight.w600,
      height: 1,
    );

    /// It creates a column with three widgets.
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        //--------------------------------------------
        //------Nome e espcialidade
        //--------------------------------------------
        Text(
          'Dr. ${medico.nome}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        //atenção nesse bloco.
        Text(
        medico.especialidade!.nomeEspecialidade!,
          style: const TextStyle(
            height: 1,
            color: Colors.white70,
          ),
        ),
        const Spacer(),
        //-----------------------------------------------
        //-----Infos
        //-----------------------------------------------
        /// It creates a row with three widgets.
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //-------------------------------
            //-----Numeros de pacientes
            //-------------------------------
            /// It creates a column with two widgets.
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Pacientes',
                  style: TextStyle(
                    color: Colors.white.withOpacity(.8),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  medico.pacientes.toString(),
                  style: countTextStyle,
                ),
              ],
            ),
            //-------------------------------
            //-----Avaliação
            //-------------------------------
            /// It creates a row with two widgets.
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Taxa',
                  style: TextStyle(
                    color: Colors.white.withOpacity(.8),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                /// Creating a row with two widgets.
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      medico.avaliacao.toString(),
                      style: countTextStyle,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 16,
                    )
                  ],
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}

/// It creates a row with three widgets
class _FundoBranco extends StatelessWidget {
  const _FundoBranco({
    Key? key,
    required this.medico,
  }) : super(key: key);
  final Medico medico;

  @override
  /// It creates a row with three widgets.
  ///
  /// Args:
  ///   context (BuildContext): The BuildContext of the parent widget.
  ///
  /// Returns:
  ///   A Container with a Row inside.
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.fromLTRB(10, 70, 10, 20),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.2),
            blurRadius: 20,
            offset: const Offset(-5, 5),
          )
        ],
      ),
      /// Creating a row with three widgets.
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildIconButton(
            iconData: Icons.favorite,
            label: "${medico.curtidas} Curtidas",
          ),
          _buildIconButton(
            iconData: Icons.comment,
            label: "${medico.comentarios} Comentários",
          ),
          _buildIconButton(
            iconData: Icons.send,
            label: "Message",
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton({
    required String label,
    required IconData iconData,
    VoidCallback? onTap,
  }) {
    /// A function that returns a row with an icon, a space and a text.
    return Row(
      children: [
        Icon(
          iconData,
          color: CorDoApp.cDarkTeal,
          size: 16,
        ),
        const SizedBox(width: 3),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: CorDoApp.cDarkTeal,
          ),
        ),
      ],
    );
  }
}
