import 'package:flutter/material.dart';
import 'package:peliculas/entities/pelicula.dart';
import 'package:peliculas/widgets/widgets.dart';

class ListaPeliculasWidget extends StatelessWidget {
  final String? titulo;
  final List<Pelicula> peliculas;

  const ListaPeliculasWidget(this.titulo, this.peliculas, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$titulo', style: const TextStyle(color: (Colors.red))),
              const Text('Ver todas'),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: peliculas.isNotEmpty
                    ? peliculas
                        .map((pelicula) => PortadaWidget(pelicula))
                        .toList()
                    : [Text('No hay peliculas disponibles')]),
          )
        ],
      ),
    );
  }
}
