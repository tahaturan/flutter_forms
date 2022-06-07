import 'package:flutter/material.dart';
import 'package:flutter_forms/views/screen/page1.dart';
import 'package:flutter_forms/views/screen/page2.dart';
import 'package:flutter_forms/views/screen/page3.dart';

class DrawerKullanimi extends StatefulWidget {
  const DrawerKullanimi({Key? key}) : super(key: key);

  @override
  State<DrawerKullanimi> createState() => _DrawerKullanimiState();
}

class _DrawerKullanimiState extends State<DrawerKullanimi> {
  var pageList = [Page1(), Page2(), Page3()];
  //*gosermek istedigimiz sayfalari bir liste icinde tanimladik

  int secilenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title: const Text('Drawer Kullanimi'),
      ),
      body: pageList[secilenIndex],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              //*Baslik tarafindaki tasarimi yapmak icin kullandigimiz widget
              decoration: BoxDecoration(color: Colors.deepPurple[400]),
              child: const Text(
                "Baslik Bolumu",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            ListTile(
              title: const Text("Page1", style: TextStyle(fontSize: 20)),
              leading: const CircleAvatar(child: Icon(Icons.looks_one)),
              trailing: const Icon(Icons.arrow_circle_right_outlined),
              onTap: () {
                setState(() {
                  secilenIndex = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Page2", style: TextStyle(fontSize: 20)),
              leading: const CircleAvatar(child: Icon(Icons.looks_two)),
              trailing: const Icon(Icons.arrow_circle_right_outlined),
              tileColor: Colors.cyan,
              onTap: () {
                setState(() {
                  secilenIndex = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Page3", style: TextStyle(fontSize: 20)),
              leading: const CircleAvatar(child: Icon(Icons.looks_3)),
              trailing: const Icon(Icons.arrow_circle_right_outlined),
              onTap: () {
                setState(() {
                  secilenIndex = 2;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
