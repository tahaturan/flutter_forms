import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Page 1",
        style: TextStyle(color: Colors.black54, fontSize: 30),
      ),
    );
  }
}
