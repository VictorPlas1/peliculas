import 'package:flutter/material.dart';

class ActoresWidget extends StatelessWidget {
  const ActoresWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.only(right: 8),
        height: 180,
        width: 120,
        decoration: const BoxDecoration(
          //imagen de la caratula
          color: Colors.grey,
        ),
      ),
    ]);
  }
}
