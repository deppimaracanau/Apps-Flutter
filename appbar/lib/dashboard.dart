import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget moneyValues() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      TextButton(
        onPressed: () {  },
        child: RichText(
          text: const TextSpan(
              text: '\$6091.12',
              style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.black,),
              children: [
                TextSpan(
                    text: '\nTotal Value',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold))
              ]),
        ),
      ),
      TextButton(
        onPressed: () {  },
        child: RichText(
          text: const TextSpan(
              text: '+13.18',
              style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
              children: [
                TextSpan(
                    text: '\n24 Hour',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold))
              ]),
        ),
      ),
      TextButton(
        onPressed: () {  },
        child: RichText(
          text: const TextSpan(
              text: '+676.25%',
              style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
              children: [
                TextSpan(
                    text: '\nTotal Gain',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold))
              ]),
        ),
      )
    ],
  );
}