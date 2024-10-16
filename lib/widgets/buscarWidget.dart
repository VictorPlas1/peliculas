import 'package:flutter/material.dart';

class Buscarwidget extends StatelessWidget {
  const Buscarwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
          labelText: 'Busqueda',
          prefixIcon: Icon(Icons.search),
          hintText: 'Busca una película o actor',
          enabledBorder: UnderlineInputBorder()),
    );
  }
}
