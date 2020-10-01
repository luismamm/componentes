import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = [
    'uno',
    'dos',
    'tres',
    'cuatro',
    'cinco',
    'uno',
    'dos',
    'tres',
    'cuatro',
    'cinco',
    'uno',
    'dos',
    'tres',
    'cuatro',
    'cinco'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(children: _crearItemsCorta()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista.add(tempWidget);
      lista.add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorta() {
    // var lista = opciones.map((item) {
    return opciones.map((item) {
      final elemento = new Column(
        children: [
          ListTile(
              title: Text(item),
              subtitle: Text('Subtítulo $item'),
              leading: Icon(Icons.ac_unit),
              trailing: Icon(Icons.arrow_right)),
          Divider()
        ],
      );

      return elemento;
    }).toList();
    //return lista;
  }
}
