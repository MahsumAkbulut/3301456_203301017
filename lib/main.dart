import 'package:flutter/material.dart';
import 'hakkında.dart';
import 'girisekranı.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "BURÇ APP",
                style: TextStyle(color: Colors.red, fontSize: 30),
              ),
              Builder(builder: (context) {
                return RaisedButton(
                    color: Colors.pink,
                    highlightColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => hakkinda()),
                      );
                    },
                    child: Container(child: Text('HAKKINDA')));
              }),
            ],
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(height: 50),
            CircleAvatar(
              radius: 100.0,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('assest/images/indir.jpeg'),
            ),
            SizedBox(height: 50),
            Text(
              'BURÇ UYGUYLAMASI',
              style: TextStyle(
                  fontFamily: 'Hurricane', fontSize: 40, color: Colors.black),
            ),
            Container(
              width: 350,
              child: Divider(
                height: 30,
                color: Colors.black,
              ),
            ),
            Builder(builder: (context) {
              return RaisedButton(
                  color: Colors.blue,
                  child: Text('BAŞLA'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => GirisEkran())));
                  });
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
    );
  }
}
