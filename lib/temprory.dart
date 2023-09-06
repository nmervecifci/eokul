import 'package:eokul/student_information.dart';
import 'package:eokul/student_list.dart';
import 'package:eokul/student_scores.dart';
import 'package:flutter/material.dart';

class TemproryPage extends StatefulWidget {
  const TemproryPage({super.key});

  @override
  State<TemproryPage> createState() => _TemproryPageState();
}

class _TemproryPageState extends State<TemproryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: Colors.blue,
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.album, size: 70),
                    title: Text('Öğrenci Kayıt',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                   StudentInformation()));
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: Icon(Icons.album, size: 70),
                    title: Text('Öğrenci Puanları',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  StudentsScores()));
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: Icon(Icons.album, size: 70),
                    title: Text('Öğrenci Listesi',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  StudentList ()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
