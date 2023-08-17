import 'package:flutter/material.dart';
import 'package:tarefas/tarefas_form.dart';

class TarefasNovo extends StatelessWidget {
  const TarefasNovo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nova Tarefa"),
      ),
      body: TarefasForm(),
    );
  }
}