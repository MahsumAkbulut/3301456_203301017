import 'package:flutter/material.dart';
import 'package:hastane_randevu_2023/randevu.dart';
import 'package:hastane_randevu_2023/hakkinda.dart';
import 'package:hastane_randevu_2023/kullanici_girdi/isimsorgu.dart';

class ilkEkran extends StatelessWidget {
  const ilkEkran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => hakkinda()),
                      );
                    },
                    style:
                        ElevatedButton.styleFrom(primary: Colors.greenAccent),
                    label: const Text(
                      ' HAKKINDA',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                          fontWeight: FontWeight.w300),
                    ),
                    icon: const Icon(Icons.question_mark, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 50),
              CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.greenAccent,
                backgroundImage: AssetImage('assest/images/hastane.jpg'),
              ),
              SizedBox(height: 50),
              Text(
                'RANDEVU SİSTEMİ',
                style: TextStyle(
                    fontFamily: 'Hurricane',
                    fontSize: 40,
                    color: Colors.greenAccent,
                    fontStyle: FontStyle.italic),
              ),
              Container(
                width: 350,
                child: Divider(
                  height: 30,
                  color: Colors.black,
                ),
              ),
              Builder(builder: (context) {
                return Column(
                  children: [
                    RaisedButton(
                        color: Colors.greenAccent,
                        child: Text('BAŞLA'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => GirisEkran())));
                        }),
                    RaisedButton(
                        color: Colors.greenAccent,
                        highlightColor: Colors.white,
                        onPressed: () {
                          Navigator.pushNamed(context, '/sorgu');
                        },
                        child: Container(child: Text('Çıkış Yap')))
                  ],
                );
              }),
              SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
              )
            ],
          ),
        ),
      ),
    );
  }
}
