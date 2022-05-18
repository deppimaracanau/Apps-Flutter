import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemyloja/common/custom_drawn/custom_drawer.dart';
import 'package:udemyloja/screens/login/login_screen.dart';

import '../../common/models/page_manager.dart';

class BaseScreen extends StatelessWidget {
   BaseScreen({Key? key}) : super(key: key);

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Provider(

      create: (_) => PageManager(pageController),
      child: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics( ),
        children:<Widget> [
           LoginScreen(),
          Scaffold(
            drawer:  const CustomDrawer(),
            appBar: AppBar(
              title: const Text('home'),
            ),
          ),Scaffold(
            drawer:  const CustomDrawer(),
            appBar: AppBar(
              title: const Text('Produtos'),
            ),
          ),Scaffold(
            drawer:  const CustomDrawer(),
            appBar: AppBar(
              title: const Text('Meus Produtos'),
            ),
          ),Scaffold(
            drawer:  const CustomDrawer(),
            appBar: AppBar(
              title: const Text('Lojas'),
            ),
          ),Scaffold(
            drawer:  const CustomDrawer(),
            appBar: AppBar(
              title: const Text('Usuários'),
            ),
          ),Scaffold(
            drawer:  const CustomDrawer(),
            appBar: AppBar(
              title: const Text('Pedidos'),
            ),
          ),

        ],
      ),
    );
  }
}
