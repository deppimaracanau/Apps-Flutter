import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
        return child: MaterialApp(
        child: Column(
          children: [
            Row(
                children:[
                  Row(),
                  const Text('teste', textDirection: TextDirection.ltr),
                ]
            ),
          ],
        ),
      ),
    );

  }
}
