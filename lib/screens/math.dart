import 'package:flutter/material.dart';

class Math extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Matemáticas'),
          backgroundColor: Color.fromARGB(255, 223, 78, 74),
        ),
        body: ListView(
          children: <Widget>[
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Text('Álgebra'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Text('Geometría'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Text('Trignometría'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Text('Cálculo diferencial'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Text('Cálculo integral'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Text('Cálculo multivariable'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
