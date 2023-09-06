import 'package:flutter/material.dart';

class StudentInformation extends StatefulWidget {
  const StudentInformation({super.key});

  @override
  State<StudentInformation> createState() => _StudentInformationState();
}

class _StudentInformationState extends State<StudentInformation> {
  List<String> icerikler = ["Numara", "İsim", "Fakülte/Yüksekokul", "Bölüm"];
  List<String> iceriklerdetay = [
    "Numara",
    "İsim",
    "Fakülte/Yüksekokul",
    "Bölüm"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Öğrenci Kayıt Listesi")),
      body: Column(
        children: [
          Container(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: icerikler.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(child: Text(icerikler[index][0])),
                  subtitle: Text(iceriklerdetay[index]),
                );
              },
            ),
          ),
          Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Kaydet",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Sil",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
