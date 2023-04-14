import 'package:flutter/material.dart';
import 'package:hastane_randevu_2023/hakkinda.dart';
import 'package:hastane_randevu_2023/hastane_ekrani.dart';
import 'package:hastane_randevu_2023/ilkekran.dart';
import 'package:hastane_randevu_2023/kullanici_girdi/isimsorgu.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HASTANE RANDEVU SİSTEMİ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      routes: {
        '/': (context) => ilkEkran(),
        '/sorgu': (context) => GirisEkran(),
        '/hakkinda': (context) => hakkinda(),
      },
    );
  }
}
