import 'package:flutter/material.dart';
import 'package:flutterapp/clinicaappapp/generatedonboardwidget/generated/GeneratedNextWidget.dart';

/* Frame button
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155.0,
      height: 52.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Container(
                color: Color.fromARGB(255, 103, 152, 225),
              ),
            ),
            Positioned(
              left: 59.0,
              top: 14.0,
              right: null,
              bottom: null,
              width: 42.0,
              height: 29.0,
              child: GeneratedNextWidget(),
            )
          ]),
    );
  }
}