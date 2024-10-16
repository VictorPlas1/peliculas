import 'package:flutter/material.dart';
import 'package:peliculas/widgets/actoreswidget.dart';
import 'package:peliculas/widgets/widgets.dart';

class PeliculaScreen extends StatelessWidget {
  const PeliculaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarHome(),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(children: [
              const Center(
                child: Column(
                  children: [
                    Text(
                      'Titulo',
                      style: TextStyle(fontSize: 50),
                    ),
                    Text(
                      'Titulo original',
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(children: [
                        Container(
                          margin: const EdgeInsets.only(right: 8),
                          height: 270,
                          width: 180,
                          decoration: const BoxDecoration(
                            //imagen de la caratula
                            color: Colors.grey,
                          ),
                        ),
                      ]),
                      const Row(
                        children: [
                          Text(
                            '3,5',
                            style: TextStyle(fontSize: 22),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '(556)',
                            style: TextStyle(fontSize: 22),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '63%',
                            style: TextStyle(fontSize: 22),
                          )
                        ],
                      ),
                    ],
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.nature),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.book),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.bike_scooter),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.man_3_outlined)
                          ],
                        ),
                        Text('Duración'),
                        Text('Año'),
                        Text('Géneros')
                      ],
                    ),
                  )
                ],
              ),
              const Column(
                children: [
                  Text(
                    'Sinopsis',
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                      'Torrente decide instalarse en plena Costa del Sol y trabajar como investigador privado. Con la ayuda de Cuco, su ayudante a tiempo parcial, intentará desenmascarar a un peligroso traficante de armas, Spinelli, que amenaza con destruir la ciudad si no le pagan 2000 millones de pesetas.')
                ],
              ),
              const Column(
                children: [
                  Text(
                    'Actores',
                    style: TextStyle(fontSize: 40),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      ActoresWidget(),
                      ActoresWidget(),
                      ActoresWidget(),
                      ActoresWidget(),
                      ActoresWidget()
                    ]),
                  )
                ],
              )
            ]),
          )),
    );
  }
}
