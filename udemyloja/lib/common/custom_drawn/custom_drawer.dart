import 'package:flutter/material.dart';
import 'package:udemyloja/common/custom_drawn/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerTile(
            iconData: Icons.home,
            title: 'Início',
            page: 0,
          ),
          DrawerTile(
            iconData: Icons.production_quantity_limits,
            title: 'Produtos',
            page: 1,
          ),
          DrawerTile(
            iconData: Icons.checklist_rtl_sharp,
            title: 'Meus Produtos',
            page: 2,
          ),
          DrawerTile(
            iconData: Icons.add_location,
            title: 'Lojas',
            page: 3,
          ),
          DrawerTile(
            iconData: Icons.supervised_user_circle,
            title: 'Usuários',
            page: 4,
          ),
          DrawerTile(
            iconData: Icons.production_quantity_limits,
            title: 'Pedidos',
            page: 5,
          ),
        ],
      ),
    );
  }
}
