import 'package:flutter/material.dart';
import 'package:flutterapp/clinicaappapp/generatedonboardwidget/GeneratedOnboardWidget.dart';
import 'package:flutterapp/clinicaappapp/generatedhomewidget/GeneratedHomeWidget.dart';
import 'package:flutterapp/clinicaappapp/generatedappointmentwidget/GeneratedAppointmentWidget.dart';

void main() {
  runApp(clinicaAppApp());
}

class clinicaAppApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/GeneratedOnboardWidget',
      routes: {
        '/GeneratedOnboardWidget': (context) => GeneratedOnboardWidget(),
        '/GeneratedHomeWidget': (context) => GeneratedHomeWidget(),
        '/GeneratedAppointmentWidget': (context) =>
            GeneratedAppointmentWidget(),
      },
    );
  }
}
