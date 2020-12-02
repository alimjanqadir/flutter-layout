import 'package:flutter/material.dart';

class BasicLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text("بۇ بىر سىناق!",
            textDirection: TextDirection.rtl,
            style: TextStyle(fontFamily: "UKIJ Esliye")));
  }
}
