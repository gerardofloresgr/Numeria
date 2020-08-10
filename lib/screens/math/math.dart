import 'package:flutter/material.dart';

class Math extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Matemáticas'),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) =>
            EntryItem(data[index], context),
        itemCount: data.length,
      ),
    );
  }
}

class Entry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("tapped on container");
      },
    );
  }

  Entry(this.title, this.id, [this.children = const <Entry>[]]);
  final String title;
  final double id;
  final List<Entry> children;
}

final List<Entry> data = <Entry>[
  Entry(
    'Álgebra',
    1,
    <Entry>[
      Entry('Propiedades de los exponentes', 1.1),
      Entry('Propiedades de los radicales', 1.2),
      Entry('Operaciones con polinomios', 1.3),
      Entry('Fórmulas de productos', 1.4),
      Entry('Fórmulas de factorización', 1.5),
      Entry('Teorema de binomio', 1.6),
      Entry('Ecuaciones lineales', 1.7),
      Entry('Propiedades de la desigualdad', 1.8),
      Entry('Fórmula general', 1.9),
      Entry('Propiedades de los logaritmos', 1.91),
    ],
  ),
  Entry(
    'Geometría',
    2,
    <Entry>[
      Entry('Ángulos de un polígono', 2.1),
      Entry('Área y permitro de un cuadrilatero', 2.2),
      Entry('Área y permitro de triángulos', 2.3),
      Entry('Área y permitro del circulo', 2.4),
      Entry('Volumen de cuerpos de geométricos', 2.5),
      Entry('Ecuación de la recta', 2.6),
      Entry('Distancia entre dos puntos', 2.6),
      Entry('Distancia de un punto a una recta', 2.7),
      Entry('Punto medio entre dos puntos', 2.8),
      Entry('Circunferencia', 2.9),
      Entry('Parábola con vértice en el origen', 2.91),
      Entry('Parábola con vértice diferente del origen', 2.92),
      Entry('Elipse con centro en el origen', 2.93),
      Entry('Hipérbola', 2.94),
    ],
  ),
  Entry(
    'Trignometría',
    3,
    <Entry>[
      Entry('Medición y clasificación de ángulos', 3.1),
      Entry('Teorema de Pitágoras', 3.2),
      Entry('Funciones trigonométricas', 3.3),
      Entry('Ley de senos y cosenos', 3.4),
      Entry('Identidades trigonométricas', 3.5),
    ],
  ),
];

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry, this.context);
  final Entry entry;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) {
      return new ListTile(
        title: new Text(root.title),
      );
    }
    return new ExpansionTile(
      key: new PageStorageKey<Entry>(root),
      title: new Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }
}
