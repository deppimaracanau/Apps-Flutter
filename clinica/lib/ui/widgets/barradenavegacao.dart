import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clinica/cores/cordoapp.dart';
import 'package:google_fonts/google_fonts.dart';

class BarraDeNavegacao extends StatelessWidget {
  const BarraDeNavegacao({
    Key? key,
    required this.items,
    this.onTap,
    this.indiceAtual = 0,
    this.selecaoDeCor = CorDoApp.cBlue,
    this.nSelecaoDeCor = Colors.grey,
  }) : super(key: key);

  final List<ItemDaBarraDeNavegacao> items;
  final ValueChanged<int>? onTap;
  final int indiceAtual;
  final Color selecaoDeCor;
  final Color nSelecaoDeCor;

  @override
  Widget build(BuildContext context) {
    assert(items.length > 1);
    return Container(
      height: kToolbarHeight,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
          )
        ],
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(items.length, (index) {
          final item = items[index];
          return BotaoBarraDeNavegacao(
            item: item,
            selecaoDeCor: item.cores ?? selecaoDeCor,
            nSelecaoDeCor: nSelecaoDeCor,
            selecionado: index == indiceAtual,
            onPressed: () {
              if (onTap != null) {
                onTap!(index);
              }
            },
          );
        }),
      ),
    );
  }
}

class ItemDaBarraDeNavegacao {
  const ItemDaBarraDeNavegacao({
    required this.rotulo,
    required this.selecaoDeIcon,
    this.nSelecaoDeIcon,
    this.cores,
  });

  final String rotulo;
  final IconData selecaoDeIcon;
  final IconData? nSelecaoDeIcon;
  final Color? cores;
}

class BotaoBarraDeNavegacao extends StatelessWidget {
  const BotaoBarraDeNavegacao({
    Key? key,
    this.onPressed,
    this.item,
    this.selecionado,
    this.selecaoDeCor = CorDoApp.cBlue,
    this.nSelecaoDeCor = Colors.grey,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final ItemDaBarraDeNavegacao? item;
  final bool? selecionado;
  final Color selecaoDeCor;
  final Color nSelecaoDeCor;

  @override
  Widget build(BuildContext context) {
    final color = selecionado! ? selecaoDeCor : nSelecaoDeCor;
    return InkWell(
      onTap: onPressed,
      child: AnimatedContainer(
        curve: Curves.fastOutSlowIn,
        duration: kThemeAnimationDuration,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: selecionado! ? color.withOpacity(.2) : Colors.transparent,
          borderRadius: BorderRadius.circular(10),),
        child: Row(
          children: [
            Icon(
              item!.selecaoDeIcon,
              color: color,
            ),
            const SizedBox(width: 5),
            AnimatedDefaultTextStyle(
              curve: Curves.fastOutSlowIn,
              duration: kThemeAnimationDuration,
              style: GoogleFonts.poppins(
                fontSize: selecionado! ? 14 : 0,
                color: color,
                fontWeight: FontWeight.w600,),
              child: Text(item!.rotulo),
            )
          ],
        ),
      ),
    );
  }
}