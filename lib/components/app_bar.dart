import 'package:flutter/material.dart';

AppBar appBar() {
  return AppBar(
    leading: const Icon(Icons.health_and_safety),
    title: const Text(
      'Bem-Estar Fit', style: TextStyle(
        fontSize: 20,
      ),
    ),
    backgroundColor: const Color.fromARGB(255, 5, 70, 10),
  );
}
