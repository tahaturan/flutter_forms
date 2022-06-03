import 'package:flutter/material.dart';

class SabitGridViewKullanimi extends StatelessWidget {
  const SabitGridViewKullanimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sabit Grid View'),
      ),
      body: GridView.count(
        crossAxisSpacing: 1,
        mainAxisSpacing: 2,
        crossAxisCount: 3,
        //*bir satirda kactane item olacak onu belirler
        childAspectRatio: 2 / 1,
        //* herbir item genisligi 2 yukseligi ise 1 olacak yani 2 ye 1 oraninda olsun diyoruz
        children: [
          GestureDetector(
            onTap: () {
              debugPrint("Gunes Tiklandi");
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.sunny),
                  Text("Gunes"),
                ],
              ),
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.brightness_2),
                Text("Ay"),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star),
                Text("Yildiz"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
