import 'package:flutter/material.dart';

class SayfaGecisButton extends StatelessWidget {
  String butonAdi;
  String gidilecekSayfaAdi;
  SayfaGecisButton(
      {required this.butonAdi, required this.gidilecekSayfaAdi, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, "/$gidilecekSayfaAdi");
      },
      child: Text(butonAdi),
    );
  }
}
