import 'package:flutter/material.dart';

import 'Utils.dart';

class NewRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    testFunction();

    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
        child: Text("This is new route"),
      ),
    );
  }
}
