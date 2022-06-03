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
  String altBaslik = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView.builder : Dinamik Liste'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Ulkeler(ulkeler: ulkeler),
        ],
      ),
    );
  }
}

class Ulkeler extends StatelessWidget {
  const Ulkeler({
    Key? key,
    required this.ulkeler,
  }) : super(key: key);

  final List<String> ulkeler;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ulkeler.length,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 300,
            child: Card(
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
                trailing: ListePopUpMenu(ulkeler: ulkeler, index: index),
                subtitle: Text(ulkeler[index]),
                onTap: () {
                  debugPrint("${ulkeler[index]} Tiklandi");
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class ListePopUpMenu extends StatelessWidget {
  final List<String> ulkeler;
  final int index;

  const ListePopUpMenu({Key? key, required this.ulkeler, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Duzenle"),
              Icon(Icons.pending),
            ],
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Sil"),
              Icon(Icons.cancel),
            ],
          ),
        ),
      ],
      onSelected: (value) {
        if (value == 1) {
          debugPrint("${ulkeler[index]} icin Duzenleme Islemi Secildi");
        } else if (value == 2) {
          debugPrint("${ulkeler[index]} icin Silme Islemi Secildi");
        }
      },
      tooltip: "Islem",
      icon: const Icon(Icons.arrow_circle_down_sharp),
    );
  }
}
