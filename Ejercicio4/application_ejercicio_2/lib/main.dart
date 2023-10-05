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

  // Método para decrementar el contador y redibujar el widget.
  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter: $counter', // Muestra el valor del contador.
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed:
                      incrementCounter, // Llama al método cuando se presiona el botón de incremento.
                  tooltip:
                      'Increment', // Texto que aparece al mantener presionado el botón.
                  child: Icon(Icons.add), // Icono del botón de incremento.
                ),
                SizedBox(width: 10), // Espacio entre los botones.
                FloatingActionButton(
                  onPressed:
                      decrementCounter, // Llama al método cuando se presiona el botón de decremento.
                  tooltip:
                      'Decrement', // Texto que aparece al mantener presionado el botón.
                  child: Icon(Icons.remove), // Icono del botón de decremento.
                ),
              ],
            ),
          ],
        ),
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
