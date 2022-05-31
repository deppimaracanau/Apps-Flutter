import 'package:cached_network_image/cached_network_image.dart';
import 'package:clinica/models/medico.dart';
import 'package:clinica/ui/home/widgets/homewidiget.dart';
import 'package:flutter/material.dart';
import 'package:clinica/cores/cordoapp.dart';

class CardMedico extends StatelessWidget {
  const CardMedico({
    Key? key,
    required this.medico,
  }) : super(key: key);

  final Medico medico;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        //--------------------------------------------
        //------LIKE, REVIEWS AND MESSAGE BUTTONS
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
                //-----BLUE BACKGROUND
                //---------------------------------
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
                //------PNG medico IMAGEM
                //-----------------------------
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

class _InformacaoMedico extends StatelessWidget {
  const _InformacaoMedico({
    Key? key,
    required this.medico,
  }) : super(key: key);

  final Medico medico;

  @override
  Widget build(BuildContext context) {
    final countTextStyle = TextStyle(
      color: Colors.white.withOpacity(.8),
      fontWeight: FontWeight.w600,
      height: 1,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        //--------------------------------------------
        //------NAME medico AND SPECIALIZATION
        //--------------------------------------------
        Text(
          'Dr. ${medico.nome}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          medico.especialidade!.especialidade!,
          style: const TextStyle(
            height: 1,
            color: Colors.white70,
          ),
        ),
        const Spacer(),
        //-----------------------------------------------
        //-----INFORMATION
        //-----------------------------------------------
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //-------------------------------
            //-----PATIENTS COUNT
            //-------------------------------
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
            //-----RATE
            //-------------------------------
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

class _FundoBranco extends StatelessWidget {
  const _FundoBranco({
    Key? key,
    required this.medico,
  }) : super(key: key);
  final Medico medico;

  @override
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