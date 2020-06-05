import 'package:flutter/material.dart';

void main() {
  runApp(RowAndColumn());
}

class RowAndColumn extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Row and Column",
      home: Scaffold(
        appBar: null,
        body: ListView(children: [
          Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Box(), Box(), Box()]),
          Divider(),
          Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Box(), Box(), Box()]),
          Divider(),
          Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Box(), Box(), Box()]),
          Divider(),
          Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Box(), Box(), Box()]),
          Divider(),
          Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Box(), Box(), Box()]),
          Divider(),
          Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Box(), Box(), Box()]),
          Divider(),
          Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Box(), BiggerBox(), Box()]),
          Divider(),
          Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Box(), BiggerBox(), Box()]),
          Divider(),
          Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Box(), BiggerBox(), Box()]),
          Divider(),
          Row(children: [
            Box(),
            Flexible(fit: FlexFit.loose, child: Box()),
            Flexible(flex: 1, fit: FlexFit.tight, child: Box()),
            Flexible(flex: 1, fit: FlexFit.tight, child: Box()),
          ]),
          Divider(),
          Row(children: [
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Expanded(child: Box()),
            Box(),
          ]),
        ]),
      ),
    );
  }
}

class Box extends StatelessWidget {
  const Box({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(color: Colors.grey, border: Border.all()),
    );
  }
}

class BiggerBox extends StatelessWidget {
  const BiggerBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 100,
      decoration: BoxDecoration(color: Colors.grey, border: Border.all()),
    );
  }
}
