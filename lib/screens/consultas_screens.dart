import 'package:flutter/material.dart';

class ConsultasMedicas extends StatefulWidget {
  const ConsultasMedicas({super.key});

  @override
  State<ConsultasMedicas> createState() => _ConsultasMedicasState();
}

class _ConsultasMedicasState extends State<ConsultasMedicas> {
  @override
  Widget build(BuildContext context) {
    const List<String> tipo_consulta = <String>[
      'Control',
      'Cardiologia',
      'Traumatologia'
    ];
    String dropdownValue = tipo_consulta.first;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              width: 120.0,
              height: 40.0,
            ),
            const Text(
              'Consulta Medica',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const CircleAvatar(
              radius: 50,
            ),
            const Text('Alfredo Cortez'),
            const SizedBox(
              width: 80.0,
              height: 40.0,
            ),
            const Text(
              'Motivo de la consulta',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            
            Center(
                child: Container(
              padding: const EdgeInsets.only(left: 25, right: 25),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 1),
                  borderRadius: BorderRadius.circular(15)),
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_drop_down_sharp),
                elevation: 16,
                style: const TextStyle(color: Colors.black),
                isExpanded: true,
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                items:
                    tipo_consulta.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            )),
            const SizedBox(
              width: 120.0,
              height: 40.0,
            ),
            const TextField(
                enableInteractiveSelection: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Diagnostico',
                  
                )),
                const SizedBox(
              width: 120.0,
              height: 40.0,
            ),
            const TextField(
                enableInteractiveSelection: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Tratamiento',
                )),
                 const SizedBox(
              width: 80.0,
              height: 40.0,
            ),
            SizedBox(
              width: 100.0,
              child: TextButton(
                onPressed: () {
                  print('on click 2');
                },
                child: const Text('Enviar'),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
