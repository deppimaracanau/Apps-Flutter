import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Travel app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(Icons.notifications),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.extension),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 37,
            ),
            const Text.rich(
              TextSpan(
                  text: 'Olá! Seja bem vindo!',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: '\n Usuario',
                      style: TextStyle(fontWeight: FontWeight.normal),
                    ),
                  ]),
              style: TextStyle(fontSize: 50),
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  size: 25,
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: 'Pesquisar',
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            const Text(
              'Lugares para visitar',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 300,
              child: GridView.count(
                padding: EdgeInsets.zero,
                crossAxisCount: 2,
                childAspectRatio: 1.491,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  for (var pais in paises) Image.asset('assets/$pais.jpg')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final paises = ['japao', 'espanha', 'grecia', 'italia'];
