import 'package:flutter/material.dart';
import 'package:flutterapp/clinicaappapp/generatedhomewidget/generated/GeneratedPillWidget.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

/* Frame Frame 5
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedFrame5Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 68.0,
      height: 68.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: kIsWeb
            ? []
            : [
                BoxShadow(
                  color: Color.fromARGB(25, 130, 130, 130),
                  offset: Offset(0.0, 4.0),
                  blurRadius: 20.0,
                )
              ],
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
              left: 20.0,
              top: 20.0,
              right: null,
              bottom: null,
              width: 28.0,
              height: 28.0,
              child: GeneratedPillWidget(),
            )
          ]),
    );
  }
}
