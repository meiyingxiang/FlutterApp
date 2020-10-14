import 'package:flutter/material.dart';

class EchoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments;
    print("传递过来的参数$args");

    return new DecoratedBox(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('assets/pi.png'),
        ),
      ),
    );
  }
}
