import 'package:flutter/material.dart';
import 'package:flutterapp/clinicaappapp/generatedhomewidget/generated/GeneratedToothCareWidget.dart';
import 'package:flutterapp/clinicaappapp/generatedhomewidget/generated/GeneratedFrame5Widget2.dart';

/* Group Group 6
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroup6Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.0,
      height: 100.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 0.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 68.0,
              height: 68.0,
              child: GeneratedFrame5Widget2(),
            ),
            Positioned(
              left: 0.0,
              top: 80.0,
              right: null,
              bottom: null,
              width: 72.0,
              height: 22.0,
              child: GeneratedToothCareWidget(),
            )
          ]),
    );
  }
}