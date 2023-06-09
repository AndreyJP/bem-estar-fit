import 'package:flutter/material.dart';

ElevatedButton mainButton({Function()? funcao, String texto = ''}) {
  return ElevatedButton(
    onPressed: funcao,
    style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(const Color.fromARGB(255, 27, 157, 31)),
        padding: MaterialStateProperty.all(const EdgeInsets.all(15))),
    child: Text(
      texto,
      style: const TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
    ),
  );
}
