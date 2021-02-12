import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    double largeur = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: new Icon(
          Icons.apps_outlined,
          size: largeur/12,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Test')
          ],
        ),
      ),
    );
  }
}
