import 'package:flutter/material.dart';
import 'package:peliculas/buscarWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Películas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 232, 177, 177),
          title: const Text(
            'PELICULAS',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          centerTitle: true,
          elevation: 10,
          shadowColor: Colors.red,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Buscarwidget(),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: const Text('Hola'),
              height: 200,
              decoration: const BoxDecoration(color: Colors.orange),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: const Text('Mundo'),
              height: 150,
              decoration: const BoxDecoration(color: Colors.blue),
            ),
            SizedBox(
              height: 10,
            ),
            Container(child: const Text('Mundo'))
          ],
        ),
      ),
    );
  }
}
