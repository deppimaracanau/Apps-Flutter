import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  String title;
  IconData icon;
  bool bottomBar;

  //constructor
  CustomAppBar(
      {Key? key, this.title = 'Crypto Currency Dashboard',
        this.icon = Icons.menu,
        this.bottomBar = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      elevation: 5,
      leading: IconButton(icon: Icon(icon), onPressed: () {  },),
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.settings,
            color: Colors.black,
          ), onPressed: () {  },
        ),
      ],
    );
  }


  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(100.0);
}