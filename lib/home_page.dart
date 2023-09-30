import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text(
          '-- ++',
        ),
      ),
      body: Center(
        child: GestureDetector(
          child: Text(
            'Contador $counter',
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
          onTap: () {
            setState(() {
              counter++;
            });
          },
        ),
      ),
      floatingActionButton: Stack(
        children: <Widget>[
          Positioned(
            bottom:
                16.0, // Ajuste essa posição verticalmente conforme necessário
            left:
                55.0, // Ajuste essa posição horizontalmente conforme necessário
            child: FloatingActionButton.large(
              backgroundColor: Colors.blue,
              child: const Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  counter--;
                });
              },
            ),
          ),
          Positioned(
            bottom:
                16.0, // Ajuste essa posição verticalmente conforme necessário
            right:
                25.0, // Ajuste essa posição horizontalmente conforme necessário
            child: FloatingActionButton.large(
              backgroundColor: Colors.red,
              child: const Icon(Icons.add),
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
