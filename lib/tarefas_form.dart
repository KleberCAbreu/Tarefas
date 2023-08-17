import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TarefasForm extends StatefulWidget {
  const TarefasForm({super.key});

  @override
  State<TarefasForm> createState() => _TarefasFormState();
}

class _TarefasFormState extends State<TarefasForm> {
  final _dateController =
      TextEditingController(); // controla o estado do campo de data

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  label: Text("Descrição"), border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _dateController, // controlador associado
              readOnly: true,
              onTap: () async {
                var data = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(Duration(days: 365)));
                print(data);
                if (data != null) {
                  String DataFormata =
                      DateFormat("dd/MM/yyyy hh:mm").format(data);
                  _dateController.text = DataFormata;
                }
              },

              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                  label: Text("Prazo"), border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Salvar"))
          ],
        ),
      ),
    );
  }
}
