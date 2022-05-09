import 'package:flutter/material.dart';
import 'package:flutterapp/clinicaappapp/generatedhomewidget/generated/GeneratedHowareyoufeelingtodayWidget.dart';
import 'package:flutterapp/clinicaappapp/generatedhomewidget/generated/GeneratedHelloAelitaWidget.dart';

/* Group Title
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 181.0,
      height: 56.0,
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
              width: 125.0,
              height: 34.0,
              child: GeneratedHelloAelitaWidget(),
            ),
            Positioned(
              left: 0.0,
              top: 32.0,
              right: null,
              bottom: null,
              width: 183.0,
              height: 26.0,
              child: GeneratedHowareyoufeelingtodayWidget(),
            )
          ]),
    );
  }
}