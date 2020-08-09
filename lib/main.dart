import 'package:flutter/material.dart';
import 'screens/math.dart';

void main() => runApp(Numeria());

class Numeria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Numeria, el rincón de los ingenieros', home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numeria'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.album),
                  title: Text('Matemáticas'),
                  subtitle: Text(
                      'Álgebra, Geometría, Trigonometría, Derivadas, Integrales y más'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Math()),
                    );
                  },
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.album),
                  title: Text('Física'),
                  subtitle: Text('Cinematica, Dinamica, Estatica y más'),
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Formules()),
                    // );
                  },
                )
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.album),
                  title: Text('Química'),
                  subtitle:
                      Text('Solubilidad, Temperatura, Estiquiometría y más'),
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Formules()),
                    // );
                  },
                )
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.album),
                  title: Text('Informática'),
                  subtitle:
                      Text('Estructuras, Algoritmos básicos, comandos y más'),
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Formules()),
                    // );
                  },
                )
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.album),
                  title: Text('Constantes'),
                  subtitle: Text('Constantes fisicas universales'),
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Formules()),
                    // );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
