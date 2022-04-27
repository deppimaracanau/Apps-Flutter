import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const <Widget>[
          IconButton(
            iconSize: 30.0,
            color: Colors.pinkAccent, //set color to mock active page color
            padding: EdgeInsets.only(left: 28.0),
            icon: Icon(Icons.wb_sunny), onPressed: () {  },

          ),
          IconButton(
            iconSize: 30.0,
            padding: EdgeInsets.only(left: 28.0),
            icon: Icon(Icons.arrow_upward), onPressed: () {  },

          ),
          IconButton(
            iconSize: 30.0,
            padding: EdgeInsets.only(left: 28.0),
            icon: Icon(Icons.explore), onPressed: () {  },

          ),
          IconButton(
            iconSize: 30.0,
            padding: EdgeInsets.only(left: 28.0),
            icon: Icon(Icons.account_balance_wallet), onPressed: () {  },

          ),
        ],

      ),
      color: Colors.white,
    );
  }
}
