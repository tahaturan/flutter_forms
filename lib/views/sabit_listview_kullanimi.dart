import 'package:flutter/material.dart';

class SabitListView extends StatelessWidget {
  const SabitListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sabit ListView'),
      ),
      body: ListView(
        //* Sabit dememizin sebebi biz kendimiz tek tek liste elemanlarini olusturdugumuz icin
        children: [
          ListTile(
            //*bu aslinda listview in bir orjinal yapisidir direk icine gerekli yerleri doldurarak daha duzenli ve guzel tasarimlar yapabiliriz
            leading: const Icon(Icons.sunny),
            //* Sol tarafina icon ekledik text veya baska bir widget da ekleyebilirdik
            title: const Text("Gunes"),
            //*Baslik kismi
            subtitle: const Text("Alt Baslik"),
            //*Alt basligimiz
            trailing: const Icon(Icons.arrow_forward),
            //* En sagina eklemek istedigimiz widgeti ekleriz burayada
            onTap: () {
              //*tiklanilma ozelligide var tiklamadigimizda yapicagimiz islerimizi yazariz burayada
              debugPrint("Gunes Tiklandi...");
            },
          ),
          ListTile(
            leading: const Icon(Icons.star_border_sharp),
            title: const Text("Yildiz"),
            subtitle: const Text("Alt Baslik"),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              debugPrint("Yildiz Tiklandi...");
            },
          ),
          ListTile(
            leading: const Icon(Icons.brightness_2),
            title: const Text("Ay"),
            subtitle: const Text("Alt Baslik"),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              debugPrint("Ay Tiklandi...");
            },
          ),
          //!sadece listtile degil baska tasarimlarida ekleyebiliriz
          GestureDetector(
            //*Tiklanilma ozelligi verdik
            onTap: () {
              debugPrint("Card Tiklandi");
            },
            child: Card(
              child: Row(
                children: const [
                  Text("Card Tasarim"),
                  Spacer(),
                  Icon(Icons.more_vert)
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              debugPrint("Cotainer Tiklandi");
            },
            child: Container(
              alignment: Alignment.center,
              height: 50,
              color: Colors.cyan,
              child: const Text("Merhaba"),
            ),
          ),
        ],
      ),
    );
  }
}
