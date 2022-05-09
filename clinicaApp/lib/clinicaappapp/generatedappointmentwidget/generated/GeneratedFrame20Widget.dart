import 'package:flutter/material.dart';
import 'package:flutterapp/clinicaappapp/generatedappointmentwidget/generated/Generated19Widget.dart';
import 'package:flutterapp/clinicaappapp/generatedappointmentwidget/generated/GeneratedJanWidget1.dart';

/* Frame Frame 20
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedFrame20Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44.0,
      height: 56.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Container(
                color: Color.fromARGB(255, 248, 248, 248),
              ),
            ),
            Positioned(
              left: 14.0,
              top: 4.0,
              right: null,
              bottom: null,
              width: 21.0,
              height: 29.0,
              child: Generated19Widget(),
            ),
            Positioned(
              left: 12.0,
              top: 28.0,
              right: null,
              bottom: null,
              width: 25.0,
              height: 29.0,
              child: GeneratedJanWidget1(),
            )
          ]),
    );
  }
}
