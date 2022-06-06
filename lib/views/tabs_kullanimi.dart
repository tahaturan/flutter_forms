import 'package:flutter/material.dart';
import 'package:flutter_forms/views/screen/page1.dart';
import 'package:flutter_forms/views/screen/page2.dart';
import 'package:flutter_forms/views/screen/page3.dart';

class TabsKullanimi extends StatefulWidget {
  const TabsKullanimi({Key? key}) : super(key: key);

  @override
  State<TabsKullanimi> createState() => _TabsKullanimiState();
}

class _TabsKullanimiState extends State<TabsKullanimi> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tabs'),
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.looks_one),
              ),
              Tab(
                icon: Icon(Icons.looks_two),
              ),
              Tab(
                icon: Icon(Icons.looks_3),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Page1(),
            Page2(),
            Page3(),
          ],
        ),
      ),
    );
  }
}
