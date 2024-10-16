import 'package:flutter/material.dart';
import 'package:peliculas/entities/pelicula.dart';
import 'package:peliculas/providers/peliculas_providers.dart';
import '../widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<PeliculasProviders>().getPopulares();
  }

  Widget build(BuildContext context) {
    final List<Pelicula> peliculas =
        context.read<PeliculasProviders>().populares;
    return Scaffold(
      appBar: const AppBarHome(),
      body: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Buscarwidget(),
            Expanded(
                child: SingleChildScrollView(
              child: Column(children: [
                //  ListaPeliculasWidget('Ahora en cines'),
                ListaPeliculasWidget('Más populares', peliculas),
                // ListaPeliculasWidget('Mejor valoradas'),
                // ListaPeliculasWidget('Próximamente')
              ]),
            ))
          ],
        ),
      ),
    );
  }
}
