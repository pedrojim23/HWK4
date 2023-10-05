import 'package:flutter/material.dart';

// Definición de la clase Counter, que es un StatefulWidget.
class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => _CounterState();
}

// Estado del widget Counter.
class _CounterState extends State<Counter> {
  int counter = 0;

  // Método para incrementar el contador y redibujar el widget.
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Text(
          'Counter: $counter', // Muestra el valor del contador.
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:
            incrementCounter, // Llama al método cuando se presiona el botón.
        tooltip: 'Increment',
        child: Icon(Icons.add), // Icono del botón de incremento.
      ),
    );
  }
}

// Función principal donde se inicia la aplicación Flutter.
void main() {
  runApp(MaterialApp(
    home: Counter(), // Inicia la aplicación con el widget Counter.
  ));
}
