import 'package:flutter/material.dart';

class FutureBuilderListeleme extends StatefulWidget {
  const FutureBuilderListeleme({Key? key}) : super(key: key);

  @override
  State<FutureBuilderListeleme> createState() => _FutureBuilderListelemeState();
}

class _FutureBuilderListelemeState extends State<FutureBuilderListeleme> {
  Future<List<String>> verileriGetir() async {
    List<String> ulkeListesi = [
      "Turkiye",
      "Almanya",
      "Italya",
      "Fransa",
      "Rusra"
    ];
    return ulkeListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Builder Listeleme'),
      ),
      body: FutureBuilder<List<String>>(
        future: verileriGetir(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            List<String> ulkeListesi = snapshot.data;
            return ListView.builder(
              itemCount: ulkeListesi.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 10,
                  color: index % 2 == 0 ? Colors.blueGrey : Colors.cyan[200],
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.green[300],
                        child: Text("${index + 1}")),
                    title: Text(
                      ulkeListesi[index],
                    ),
                    trailing: const Icon(Icons.flag_outlined),
                  ),
                );
              },
            );
          } else {
            return Center(
              child: Container(),
            );
          }
        },
      ),
    );
  }
}
