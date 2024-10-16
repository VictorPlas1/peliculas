import 'package:flutter/material.dart';

import 'widgets.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'PELICULAS',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
        elevation: 10,
        shadowColor: Colors.red,
        toolbarHeight: 50,
        actions: const [BotonOpciones()],
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home,
              size: 40,
            )));
  }
}
