import 'package:flutter/material.dart';
import 'package:flutterapp/clinicaappapp/generatedhomewidget/generated/GeneratedSearchWidget1.dart';
import 'package:flutterapp/clinicaappapp/generatedhomewidget/generated/GeneratedSearchNormalWidget.dart';

/* Frame Search
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedSearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.0,
      height: 52.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          width: 1.0,
          color: Color.fromARGB(255, 230, 230, 230),
        ),
      ),
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Positioned(
              left: 16.0,
              top: 14.0,
              right: null,
              bottom: null,
              width: 24.0,
              height: 24.0,
              child: GeneratedSearchNormalWidget(),
            ),
            Positioned(
              left: 52.0,
              top: 16.0,
              right: null,
              bottom: null,
              width: 58.0,
              height: 24.0,
              child: GeneratedSearchWidget1(),
            )
          ]),
    );
  }
}