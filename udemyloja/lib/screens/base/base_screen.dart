import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
   BaseScreen({Key? key}) : super(key: key);

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children:<Widget> [
        Container(
          color: Colors.red,
          child: ElevatedButton(
                onPressed: (){
                  pageController.jumpToPage(page)

                },
                child: Text('proximo'),
            )
        ),
        Container(
          color: Colors.yellow,
        ),
        Container(
          color: Colors.green,
        ),
      ],
    );
  }
}
