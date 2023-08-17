import 'package:flutter/material.dart';

class TarefasPage extends StatelessWidget {
  const TarefasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tarefas")),
      body: listaVazia(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/add");
        },
        child: Icon(Icons.add),
      ),
    );
  }

  listaVazia() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset("imagens/lista.jpg"),
            ),
            Text(
              "Lista de tarefas vazia!",
              style: TextStyle(fontSize: 24),
            )
          ],
        ),
      ],
    );
  }
}
