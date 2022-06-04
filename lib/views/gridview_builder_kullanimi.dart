import 'package:flutter/material.dart';

class GridViewBuilderKullanimi extends StatefulWidget {
  const GridViewBuilderKullanimi({Key? key}) : super(key: key);

  @override
  State<GridViewBuilderKullanimi> createState() =>
      _GridViewBuilderKullanimiState();
}

class _GridViewBuilderKullanimiState extends State<GridViewBuilderKullanimi> {
  List<String> ulkeler = [
    "Turkiye",
    "Almanya",
    "Fransa",
    "Rusya",
    "Italya",
    "Avusturya"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView.builder'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 1,
        ),
        itemCount: ulkeler.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              debugPrint("${ulkeler[index]} Secildi");
            },
            child: Card(
              elevation: 10,
              color: Colors.cyan[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("${index + 1}"),
                  Text(ulkeler[index]),
                  PopupMenuButton(
                    itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: 1,
                        child: Text("Duzenle"),
                      ),
                      const PopupMenuItem(
                        value: 2,
                        child: Text("Sil"),
                      ),
                    ],
                    onSelected: (int secilenValue) {
                      if (secilenValue == 1) {
                        debugPrint(
                            "${ulkeler[index]} icin Duzenleme Islemi Secildi");
                      } else if (secilenValue == 2) {
                        debugPrint(
                            "${ulkeler[index]} icin Silme Islemi Secildi");
                      }
                    },
                    child: const Icon(Icons.arrow_drop_down_sharp),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
