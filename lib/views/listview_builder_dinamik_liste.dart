import 'package:flutter/material.dart';

class ListViewBuilderDinamikListe extends StatefulWidget {
  const ListViewBuilderDinamikListe({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderDinamikListe> createState() =>
      _ListViewBuilderDinamikListeState();
}

class _ListViewBuilderDinamikListeState
    extends State<ListViewBuilderDinamikListe> {
  List<String> ulkeler = ["Turkiye", "Almanya", "Italya", "Fransa", "Rusra"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView.builder : Dinamik Liste'),
      ),
      body: ListView.builder(
        itemCount: ulkeler.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 10,
            shape: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.cyan, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.cyan,
                child: Text("${index + 1}"),
              ),
              title: Text(ulkeler[index]),
              trailing: const Icon(Icons.flag_rounded, color: Colors.red),
              subtitle: Text(ulkeler[index]),
              onTap: () {
                debugPrint("${ulkeler[index]} Tiklandi");
              },
            ),
          );
        },
      ),
    );
  }
}
