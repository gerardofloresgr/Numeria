import 'package:flutter/material.dart';
import 'screens/math/math.dart';
import 'screens/physic/physic.dart';

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
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.add, color: Colors.white),
                    title: Text(
                      'Matemáticas',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    subtitle: Text(
                      'Álgebra, Geometría, Trigonometría, Derivadas, Integrales y más',
                      style: TextStyle(color: Colors.white),
                    ),
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
            color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.toys, color: Colors.white),
                    title: Text('Física',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                    subtitle: Text(
                      'Cinematica, Dinamica, Estatica y más',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Physic()),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
          Card(
            color: Colors.lightGreen,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.ac_unit, color: Colors.white),
                    title: Text('Química',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                    subtitle: Text(
                      'Solubilidad, Temperatura, Estiquiometría y más',
                      style: TextStyle(color: Colors.white),
                    ),
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
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.code, color: Colors.white),
                    title: Text('Informática',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                    subtitle: Text(
                      'Estructuras, Algoritmos básicos, comandos y más',
                      style: TextStyle(color: Colors.white),
                    ),
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
            color: Colors.orange,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading:
                        Icon(Icons.fiber_manual_record, color: Colors.white),
                    title: Text('Constantes',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                    subtitle: Text(
                      'Constantes fisicas universales',
                      style: TextStyle(color: Colors.white),
                    ),
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
