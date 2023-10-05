import 'package:flutter/material.dart';
import 'dart:math';

class Calculadora extends StatefulWidget {
  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  String _operacion = ""; // Almacena la operación actual
  double _primerNumero = 0; // Almacena el primer número para operaciones
  double _segundoNumero = 0; // Almacena el segundo número para operaciones
  double _resultado = 0; // Almacena el resultado de la operación

  // Funciones para realizar operaciones matemáticas

  double _sumar() {
    return _primerNumero + _segundoNumero;
  }

  double _restar() {
    return _primerNumero - _segundoNumero;
  }

  double _multiplicar() {
    return _primerNumero * _segundoNumero;
  }

  double _dividir() {
    return _primerNumero / _segundoNumero;
  }

  double _square() {
    return pow(_primerNumero, 2)
        .toDouble(); // Calcula el cuadrado del primer número
  }

  // Funciones para manejar eventos de botones

  void _onSumar() {
    _resultado = _sumar();
    _operacion = "+"; // Establece la operación actual como suma
    setState(() {}); // Actualiza la interfaz de usuario
  }

  void _onRestar() {
    _resultado = _restar();
    _operacion = "-"; // Establece la operación actual como resta
    setState(() {});
  }

  void _onMultiplicar() {
    _resultado = _multiplicar();
    _operacion = "*"; // Establece la operación actual como multiplicación
    setState(() {});
  }

  void _onDividir() {
    _resultado = _dividir();
    _operacion = "/"; // Establece la operación actual como división
    setState(() {});
  }

  void _onSquare() {
    _resultado = _square();
    _operacion = "^2"; // Establece la operación actual como elevar al cuadrado
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Operación: $_operacion', // Muestra la operación actual
              style: TextStyle(fontSize: 20),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Primer número',
              ),
              onChanged: (value) {
                _primerNumero =
                    double.parse(value); // Actualiza el primer número
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Segundo número',
              ),
              onChanged: (value) {
                _segundoNumero =
                    double.parse(value); // Actualiza el segundo número
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: _onSumar,
                  tooltip: 'Sumar',
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: _onRestar,
                  tooltip: 'Restar',
                  child: Icon(Icons.remove),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: _onMultiplicar,
                  tooltip: 'Multiplicar',
                  child: const Icon(Icons.highlight_remove),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: _onDividir,
                  tooltip: 'Dividir',
                  child: Icon(Icons.percent),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: _onSquare,
                  tooltip: 'Elevar al cuadrado',
                  child: const Icon(Icons.square_foot),
                ),
              ],
            ),
            Text(
              'Resultado: $_resultado', // Muestra el resultado de la operación
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Calculadora(),
    ),
  );
}
