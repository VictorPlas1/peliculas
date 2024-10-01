import 'package:flutter/material.dart';
import 'buscarWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 215, 7, 7),
            title: const Text(
              'PELICULAS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            centerTitle: true,
            elevation: 10,
            shadowColor: Colors.orange,
            toolbarHeight: 70,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    size: 40,
                  )),
            ],
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home,
                  size: 40,
                ))),
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Buscarwidget(),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Más populares'),
                      Text('Ver todas'),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 180,
                        width: 120,
                        decoration: const BoxDecoration(
                          //imagen de la caratula
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 180,
                        width: 120,
                        decoration: const BoxDecoration(
                          //imagen de la caratula
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 180,
                        width: 120,
                        decoration: const BoxDecoration(
                          //imagen de la caratula
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ]),
          ),
        ));
  }
}
