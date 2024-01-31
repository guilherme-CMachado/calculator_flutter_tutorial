import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/home_page.dart';

//Como rodar um projeto flutter:

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Container é tipo uma caixinha que você pode colocar coisas
    //Flutter é hierarquia, ou seja, uma widget sempre terá um filho.
    return MaterialApp(
      home: Scaffold(body: HomePage()),
    );
  }
}

// pub.dev

//Tudo no flutter é uma [Widget]

//Stateless e a Stateful

//Stateless cria uma widget que ela não ter muita interatividade na tela, exemplo um texto
//Stateful difenrente da stateless são widgets que possuem alta taxa de alteração na tela.


