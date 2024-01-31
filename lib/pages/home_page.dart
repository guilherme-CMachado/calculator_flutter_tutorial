import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numero1 = 0;
  int numero2 = 0;
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final int somaTotal = numero1 + numero2;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), border: Border.all()),
            child: TextFormField(
              controller: controller1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Digite um valor para o numero 1',
                border: InputBorder.none,
              ),
              onChanged: (valor) {
                setState(() {
                  numero1 = int.tryParse(valor) ?? 0;
                });
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), border: Border.all()),
            child: TextFormField(
              controller: controller2,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Digite um valor para o numero 2',
                border: InputBorder.none,
              ),
              onChanged: (valor) {
                setState(() {
                  numero2 = int.tryParse(valor) ?? 0;
                });
              },
            ),
          ),
          Text("O valor da soma é: $somaTotal")
        ],
      ),
    );
  }
}
