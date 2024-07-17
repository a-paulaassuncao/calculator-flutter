import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyappState();
}

class _MyappState extends State<MyApp> {
  // variaveis
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();
  double _resultado = 0;

  void _somar() {
    setState(() {
      final num1 = double.parse(_num1Controller.text);
      final num2 = double.parse(_num2Controller.text);
      _resultado = num1 + num2;
    });
  }

  void _subtrair() {
    setState(() {
      final num1 = double.parse(_num1Controller.text);
      final num2 = double.parse(_num2Controller.text);
      _resultado = num1 - num2;
    });
  }

  void _multiplicar() {
    setState(() {
      final num1 = double.parse(_num1Controller.text);
      final num2 = double.parse(_num2Controller.text);
      _resultado = num1 * num2;
    });
  }

  void _dividir() {
    setState(() {
      final num1 = double.parse(_num1Controller.text);
      final num2 = double.parse(_num2Controller.text);
      _resultado = num1 / num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Calculadora",
        home: Scaffold(
            appBar: AppBar(title: const Text('Calculadora')),
            body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      controller: _num1Controller,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(labelText: 'Número 1'),
                    ),
                    TextField(
                      controller: _num2Controller,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(labelText: 'Número 2'),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _somar,
                      child: const Text('Somar'),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: _subtrair, child: const Text('Subtratir')),
                    const SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: _multiplicar,
                        child: const Text('Multiplicar')),
                    const SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: _dividir, child: const Text('Dividir')),
                    const SizedBox(height: 20),
                    Text(
                      'Resultado: $_resultado',
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ))));
  }
}
