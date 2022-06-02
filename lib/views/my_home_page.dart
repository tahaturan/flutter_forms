import 'package:flutter/material.dart';
import 'package:flutter_forms/widgets/sayfa_gecis_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool aramaYapiliyorMu = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: aramaYapiliyorMu
            ? const Padding(
                padding: EdgeInsets.all(10.0),
                child: AppBarAramaText(),
              )
            : const Text('AnaSayfa'),
        actions: [
          aramaYapiliyorMu
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      aramaYapiliyorMu = false;
                    });
                  },
                  icon: const Icon(Icons.search_off),
                )
              : IconButton(
                  onPressed: () {
                    setState(() {
                      aramaYapiliyorMu = true;
                    });
                  },
                  icon: const Icon(Icons.search),
                ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SayfaGecisButton(
                butonAdi: "Form Kullanimi", gidilecekSayfaAdi: "formKullanimi"),
            SayfaGecisButton(
                butonAdi: "AppBar Kullanimi",
                gidilecekSayfaAdi: "appbarKullanimi"),
            SayfaGecisButton(
                butonAdi: "Card Kullanimi", gidilecekSayfaAdi: "cardKullanimi"),
            SayfaGecisButton(
                butonAdi: "Sabit ListView", gidilecekSayfaAdi: "sabitListView"),
          ],
        ),
      ),
    );
  }
}

class AppBarAramaText extends StatelessWidget {
  const AppBarAramaText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: "Arama Icin Birsey Yazin",
        hintStyle: TextStyle(color: Colors.white),
        icon: Icon(Icons.arrow_circle_right_rounded, color: Colors.white),
      ),
      onChanged: (aramaSonucu) {
        debugPrint("arama sonucu : $aramaSonucu");
      },
    );
  }
}
