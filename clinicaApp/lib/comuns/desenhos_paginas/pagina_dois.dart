import 'package:flutter/material.dart';

class PaginaDois extends StatelessWidget {
  const PaginaDois({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        const PaginaDois(),
        Column(
          Container(),
          Container(),
          Container(),
          Container(),
        ),

      ],
    );
  }
}
