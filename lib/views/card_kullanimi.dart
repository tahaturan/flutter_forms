import 'package:flutter/material.dart';

class CardKullanimi extends StatelessWidget {
  const CardKullanimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Kullanimi'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: Card(
                color: Colors.deepPurple,
                elevation: 10, //*golge derinligi
                shadowColor: Colors.yellow, //*golge rengi
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  side: BorderSide(
                    //*cerceve olustururuz
                    width: 1,
                    color: Colors.yellow,
                  ),
                ), //*kose kenarlarina ovallik verebiliriz all degilde belli koselere vermek istersek de only i kullabiliriz
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Toplam Puan",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.star_border_purple500,
                            color: Colors.amber,
                            size: 25,
                          ),
                          Text(
                            "750",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
