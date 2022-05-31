import 'package:cached_network_image/cached_network_image.dart';
import 'package:clinica/models/pacientes.dart';
import 'package:flutter/material.dart';

/// It creates a search bar with a profile picture
class Busca extends StatelessWidget {
  const Busca({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const height = 45.0;
    /// Creating a search bar with a profile picture.
    return SafeArea(
      child: Row(
        children: [
          /// Creating a textfield with a search icon inside.
          Expanded(
            child: SizedBox(
              height: height,
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white38,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  suffixIcon: const Icon(
                    Icons.search,
                    color: Colors.white70,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  hintStyle: const TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                  hintText: 'Pesquisar',
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          /// Creating a circle with a border and a image inside.
          Container(
            width: height,
            height: height,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                    image: CachedNetworkImageProvider(
                      Paciente.pacienteAtual.fotoUrl!,
                    ),
                    fit: BoxFit.cover)),
          ),
        ],
      ),
    );
  }
}