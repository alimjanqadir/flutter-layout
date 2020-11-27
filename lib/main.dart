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
          // _simpleBoxes(),
          // _mainAxisSize(),
          // _alignment(),
          // _flexible(),
          // _expanded(),
          // _spacerAndSizedBox(),
          // _text(),
          // _icon(),
          // _image()
        ]),
      ),
    );
  }

  Widget _simpleBoxes() {
    return Column(
      children: [
        Row(children: [Box(), Box(), Box()]),
        Divider()
      ],
    );
  }

  Row _image() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
            'https://github.com/flutter/website/blob/master/examples/layout/sizing/images/pic3.jpg?raw=true')
      ],
    );
  }

  Widget _icon() {
    return Column(
      children: [
        Row(
          children: [Icon(Icons.widgets, size: 50, color: Colors.blue)],
        ),
        Divider(),
      ],
    );
  }

  Widget _text() {
    return Column(
      children: [
        Row(
          children: [
            Text("test!",
                style: TextStyle(
                    fontSize: 30, fontFamily: "futura", color: Colors.blue)),
            Text("test!",
                style: TextStyle(
                    fontSize: 50, fontFamily: "futura", color: Colors.green)),
            Text("test!",
                style: TextStyle(
                    fontSize: 40, fontFamily: "futura", color: Colors.red)),
          ],
        ),
        Divider(),
      ],
    );
  }

  Widget _spacerAndSizedBox() {
    return Column(
      children: [
        Row(children: [
          Box(),
          Box(),
          Box(),
          SizedBox(width: 100, child: Box()),
          SizedBox(width: 50),
          Box(),
          Box(),
        ]),
        Divider(),
        Row(children: [
          Box(),
          Spacer(flex: 1),
          Box(),
        ]),
        Divider(),
      ],
    );
  }

  Widget _expanded() {
    return Column(
      children: [
        Row(children: [
          Box(),
          Box(),
          Expanded(child: Box()),
          Box(),
        ]),
        Divider(),
      ],
    );
  }

  Widget _flexible() {
    return Column(
      children: [
        Row(children: [
          Box(),
          Flexible(flex: 0, fit: FlexFit.tight, child: Box()),
          Flexible(flex: 3, fit: FlexFit.tight, child: Box()),
        ]),
        Divider(),
      ],
    );
  }

  Widget _alignment() {
    return Column(
      children: [
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
      ],
    );
  }

  Column _mainAxisSize() {
    return Column(
      children: [
        Row(mainAxisSize: MainAxisSize.min, children: [Box(), Box(), Box()]),
        Divider(),
        Row(mainAxisSize: MainAxisSize.max, children: [Box(), Box(), Box()]),
        Divider(),
      ],
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
