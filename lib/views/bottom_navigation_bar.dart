import 'package:flutter/material.dart';
import 'package:flutter_forms/views/screen/page1.dart';
import 'package:flutter_forms/views/screen/page2.dart';
import 'package:flutter_forms/views/screen/page3.dart';

class BottomNavigationBarKullanimi extends StatefulWidget {
  const BottomNavigationBarKullanimi({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarKullanimi> createState() =>
      _BottomNavigationBarKullanimiState();
}

class _BottomNavigationBarKullanimiState
    extends State<BottomNavigationBarKullanimi> {
  var pageList = [Page1(), Page2(), Page3()];
  //*sayfalarimizi bir liste icine atadik
  int secilenIndex = 0;
  //*sayfalarimizi indexlerle takip edecegimiz icin varsayilan bir index degerini belirledik
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: const Text('Bottom Navigation Bar'),
      ),
      body: pageList[secilenIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.looks_one), label: "one"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_two), label: "two"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_3), label: "three"),
        ],
        backgroundColor: Colors.deepPurple[200],
        selectedItemColor: Colors.amber[200],
        unselectedItemColor: Colors.white,
        currentIndex: secilenIndex,
        onTap: (index) {
          setState(() {
            secilenIndex = index;
          });
        },
      ),
    );
  }
}
