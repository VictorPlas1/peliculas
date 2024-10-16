import 'package:flutter/material.dart';

class BotonOpciones extends StatelessWidget {
  const BotonOpciones({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      offset: const Offset(0, 70),
      icon: const Icon(Icons.more_vert),
      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
        PopupMenuItem(
          onTap: () {},
          value: 1,
          child: Text('Opcion 1'),
        ),
        PopupMenuItem(
          onTap: () {},
          value: 2,
          child: Text('Opcion 2'),
        )
      ],
    );
  }
}
