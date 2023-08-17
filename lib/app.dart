import 'package:flutter/material.dart';
import 'package:tarefas/tarefa_page.dart';
import 'package:tarefas/tarefas_novo.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lime),
      routes: {
        "/": (context) => TarefasPage(),
        "/add": (context) => TarefasNovo()
      },
    );
  }
}
