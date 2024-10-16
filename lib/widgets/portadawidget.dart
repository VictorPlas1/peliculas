import 'package:flutter/material.dart';
import 'package:peliculas/entities/pelicula.dart';

class PortadaWidget extends StatelessWidget {
  final Pelicula pelicula;
  const PortadaWidget(this.pelicula, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      height: 180,
      width: 120,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://image.tmdb.org/t/p/w500/${pelicula.posterPath}'),
              fit: BoxFit.cover)),
    );
  }
}
