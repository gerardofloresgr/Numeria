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
        leading: Icon(Icons.functions),
        title: Text('Numeria'),
        backgroundColor: Color.fromARGB(255, 74, 20, 140),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.add, color: Colors.red),
                    title: Text('Matemáticas',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.red)),
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
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.toys, color: Colors.green),
                    title: Text('Física',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.green)),
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
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.ac_unit, color: Colors.lightGreen),
                    title: Text('Química',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightGreen)),
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
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.code, color: Colors.blue),
                    title: Text('Informática',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue)),
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
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading:
                        Icon(Icons.fiber_manual_record, color: Colors.orange),
                    title: Text('Constantes',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.orange)),
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
            ),
          )
        ],
      ),
    );
  }
}
