import 'package:flutter/material.dart';
import 'package:flutterapp/clinicaappapp/generatedhomewidget/generated/GeneratedOurServiceWidget.dart';
import 'package:flutterapp/clinicaappapp/generatedhomewidget/generated/GeneratedViewallWidget.dart';

/* Group Group 3
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroup3Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.0,
      height: 26.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 275.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 54.0,
              height: 26.0,
              child: GeneratedViewallWidget(),
            ),
            Positioned(
              left: 0.0,
              top: 2.0,
              right: null,
              bottom: null,
              width: 91.0,
              height: 26.0,
              child: GeneratedOurServiceWidget(),
            )
          ]),
    );
  }
}