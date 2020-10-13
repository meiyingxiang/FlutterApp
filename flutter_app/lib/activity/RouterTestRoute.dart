import 'package:flutter/material.dart';
import 'package:flutter_app/activity/TipRoute.dart';

class RouterTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () async {
          var result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return TipRoute(
                  text: "我是提示XXX",
                );
              },
            ),
          );
          print("路由返回值:$result");
        },
        child: Text("打开提示页"),
      ),
    );
  }
}
