import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_forms/views/appbar_kullanimi.dart';
import 'package:flutter_forms/views/form_kullanimi.dart';
import 'package:flutter_forms/views/my_home_page.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return sayfaGecis(const MyHomePage());
      case "/formKullanimi":
        return sayfaGecis(FormKullanimi());
      case "/appbarKullanimi":
        return sayfaGecis(AppBarKullanimi());
    }
  }

  static PageRoute<dynamic> sayfaGecis(Widget gidilecekSayfa) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
        builder: (context) => gidilecekSayfa,
      );
    } else {
      return MaterialPageRoute(
        builder: (context) => gidilecekSayfa,
      );
    }
  }
}
