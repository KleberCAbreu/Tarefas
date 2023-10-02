import 'package:flutter/material.dart';
import 'package:tarefas/tarefas_form.dart';
import 'package:tarefas/tarefas_helper.dart';

import 'tarefa_state.dart';

class TarefasEdit extends StatelessWidget {
  final TarefaState state;
  const TarefasEdit({super.key, required this.state, required TarefasHelper helper});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Nova Tarefa"),
      ),
      body: TarefasForm(state: this.state),
    );
  }
}