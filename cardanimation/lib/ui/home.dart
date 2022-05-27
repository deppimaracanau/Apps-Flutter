import 'package:cardanimation/ui/widgets/perspectiva.dart';
import 'package:flutter/material.dart';
import 'package:cardanimation/models/contatos.dart';

import '../ui/widgets/dados.dart';



class PaginaDeContato extends StatefulWidget {
  const PaginaDeContato({
    Key? key,
  }) : super(key: key);

  @override
  _EstadoPaginaDeContato createState() => _EstadoPaginaDeContato();
}

class _EstadoPaginaDeContato extends State<PaginaDeContato> {
  int? _visibleItems;
  double? _itemExtent;

  @override
  void initState() {
    _visibleItems = 15;
    _itemExtent = 270.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.vertical(
        //     bottom: Radius.circular(200),
        //   ),
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
        title: const Text('Contatos do Campus'),
      ),
      body: Perspectiva(
        visualizedItems: _visibleItems,
        itemExtent: _itemExtent,
        initialIndex: 7,
        enableBackItemsShadow: true,
        backItemsShadowColor: Theme.of(context).scaffoldBackgroundColor,
        padding: const EdgeInsets.all(10),
        onTapFrontItem: (value) {},
        children: List.generate(Contatos.contatos.length, (index) {
          final borderColor = Colors.accents[index % Colors.accents.length];
          final contatos = Contatos.contatos[index];
          return ContatosCard(
            borderColor: borderColor,
            contatos: contatos,
          );
        }),
      ),
      //---------------------------------------
      // Drawer
      //---------------------------------------
      drawer: Drawer(
        child: Material(
          textStyle: const TextStyle(color: Colors.white, fontSize: 16),
          child: Container(
            color: const Color.fromARGB(0, 0, 0, 0),
            padding: const EdgeInsets.all(20),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //----------------------------
                  // Drawer title
                  //----------------------------
                  Row(
                    children: const [
                      Icon(
                        Icons.settings_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        ' Settings',
                        style: TextStyle(
                          fontSize: 26,
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 40),
                  //----------------------------
                  // Visible Items Control
                  //----------------------------
                  Row(
                    children: [
                      const Icon(
                        Icons.visibility_rounded,
                        color: Colors.white,
                        size: 16,
                      ),
                      const Text(
                        ' Itens visiveis',
                        style: TextStyle(),
                      ),
                      Expanded(
                        child: Slider(
                          value: _visibleItems!.toDouble(),
                          min: 1,
                          max: 15,
                          divisions: 15,
                          label: '$_visibleItems',
                          activeColor: Colors.deepPurple[200],
                          inactiveColor: Colors.deepPurple[400],
                          onChanged: (value) {
                            setState(() {
                              _visibleItems = value.toInt();
                            });
                          },
                        ),
                      )
                    ],
                  ),
                  const Divider(height: 40),
                  //----------------------------
                  // Item Extent Control
                  //----------------------------
                  Row(
                    children: [
                      const Icon(
                        Icons.widgets,
                        color: Colors.white,
                        size: 16,
                      ),
                      const Text(
                        ' Ampliar',
                        style: TextStyle(),
                      ),
                      Expanded(
                        child: Slider(
                          value: _itemExtent!,
                          min: 270,
                          max: MediaQuery.of(context).size.height * .8,
                          label: '$_itemExtent',
                          activeColor: Colors.deepPurple[200],
                          inactiveColor: Colors.deepPurple[400],
                          onChanged: (value) {
                            setState(() {
                              _itemExtent = value;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                  const Divider(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
