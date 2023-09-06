import 'package:flutter/material.dart';

class StudentsScores extends StatefulWidget {
  const StudentsScores({super.key});

  @override
  State<StudentsScores> createState() => _StudentsScoresState();
}

class _StudentsScoresState extends State<StudentsScores> {
  List<String> items = ["Item1", "Item2", "Item3", "Item4"];
  String? selectedItem = "Item1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Puan Kayıt")),
      body: Center(
        child: Column(
          children: [
            DropdownButton<String>(
              value: selectedItem,
              items: items.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedItem = newValue!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
