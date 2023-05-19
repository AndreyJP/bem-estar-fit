import 'package:flutter/material.dart';

//Não utilzado no projeto
Card tipCard(String text) {
  return Card(
    margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Wrap(
        children:  [
          Text(
            text,
            style: const TextStyle(
              fontSize: 17,
            ),
          ),
        ],
      ),
    ),
  );
}
