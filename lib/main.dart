import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jade',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Jade'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const platform = const MethodChannel('flutter/test');

  String _testText = '';
  String _roadsterText = '';

  _getNative() async {
    String theMessage;
    try {
      theMessage = await platform.invokeMethod("getTest");
    } on Exception catch (e) {
      theMessage = "This was an error";
    }

    setState(() {
      _testText = theMessage;
    });
  }

  _getRoadster() async {
    String roadster;
    try {
      print("pvLog");
      roadster = await platform.invokeMethod("getRoadster");
    } on Exception catch (e) {
      roadster = "This was an error";
    }

    setState(() {
      _roadsterText = roadster;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(decoration: InputDecoration(hintText: "Enter it yoo")),
              TextField(
                  decoration: InputDecoration(hintText: "Dont enter mayb")),
              FlatButton(
                onPressed: _getNative,
                child: Text("Click meh for getTest"),
              ),
              Text(_testText),
              FlatButton(
                onPressed: _getRoadster,
                child: Text("Click for roadster"),
              ),
              Text(_roadsterText)
            ],
          ),
        ));
  }
}
