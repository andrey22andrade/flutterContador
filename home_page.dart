import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // cria um estado fixo do layout
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0; // contador inicia com 0

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Center(
          child: GestureDetector(
        child: Text('Contador: $counter', style: TextStyle(fontSize: 20)),
        onTap: () {
          setState(() {
            counter++; // A cada clique adicione mais um número pelo contador
          });
        },
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
            });
          }),
    );
  }
}
