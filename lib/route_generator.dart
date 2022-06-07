import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_forms/views/appbar_kullanimi.dart';
import 'package:flutter_forms/views/bottom_navigation_bar.dart';
import 'package:flutter_forms/views/card_kullanimi.dart';
import 'package:flutter_forms/views/form_kullanimi.dart';
import 'package:flutter_forms/views/future_builder_listeleme.dart';
import 'package:flutter_forms/views/gridview_builder_kullanimi.dart';
import 'package:flutter_forms/views/listview_builder_dinamik_liste.dart';
import 'package:flutter_forms/views/my_home_page.dart';
import 'package:flutter_forms/views/sabit_gridview_kullanimi.dart';
import 'package:flutter_forms/views/sabit_listview_kullanimi.dart';
import 'package:flutter_forms/views/tabs_kullanimi.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return sayfaGecis(const MyHomePage());
      case "/formKullanimi":
        return sayfaGecis(FormKullanimi());
      case "/appbarKullanimi":
        return sayfaGecis(AppBarKullanimi());
      case "/cardKullanimi":
        return sayfaGecis(const CardKullanimi());
      case "/sabitListView":
        return sayfaGecis(const SabitListView());
      case "/sabitGridView":
        return sayfaGecis(const SabitGridViewKullanimi());
      case "/listviewbuilder":
        return sayfaGecis(const ListViewBuilderDinamikListe());
      case "/gridViewbuilder":
        return sayfaGecis(const GridViewBuilderKullanimi());
      case "/futureBuilder":
        return sayfaGecis(const FutureBuilderListeleme());
      case "/tabskullanimi":
        return sayfaGecis(const TabsKullanimi());
      case "/bottomnavigationbar":
        return sayfaGecis(const BottomNavigationBarKullanimi());
    }
    return null;
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
