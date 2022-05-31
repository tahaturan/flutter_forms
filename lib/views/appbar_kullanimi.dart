import 'package:flutter/material.dart';

class AppBarKullanimi extends StatefulWidget {
  AppBarKullanimi({Key? key}) : super(key: key);

  @override
  State<AppBarKullanimi> createState() => _AppBarKullanimiState();
}

class _AppBarKullanimiState extends State<AppBarKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "AppBar",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            Text(
              "Alt Baslik",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
        centerTitle: false, //*basligi ortalar
        leading: IconButton(
          onPressed: () {
            debugPrint("Menu Tiklandi");
          },
          tooltip: "Menu Icon",
          icon: const Icon(Icons.menu),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "CIKIS",
              style: TextStyle(color: Colors.white),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.info_outline),
            tooltip: "Bilgi",
          ),
          const AppBarPopUpMenu()
        ],
      ),
      body: Container(),
    );
  }
}

class AppBarPopUpMenu extends StatelessWidget {
  const AppBarPopUpMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: const Icon(Icons.more_vert),
      itemBuilder: (context) => [
        const PopupMenuItem(
          value: 1,
          child: Text("Sil"),
        ),
        const PopupMenuItem(
          value: 2,
          child: Text("Guncelle"),
        ),
      ],
      onSelected: (menuItemValue) {
        if (menuItemValue == 1) {
          debugPrint("Sil Tiklanildi");
        } else if (menuItemValue == 2) {
          debugPrint("Guncelle tiklandi");
        }
      },
    );
  }
}
