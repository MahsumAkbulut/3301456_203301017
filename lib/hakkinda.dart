import 'package:flutter/material.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';

class hakkinda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Text("HAKKINDA"),
              SizedBox(),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(children: [
                Image.asset('assest/images/hakkinda.png'),
                ScrollLoopAutoScroll(
                  duplicateChild: 10,
                  child: Text(
                    'Bu uygulama Selçuk Üniversitesi Bilgisayar Mühendisliği 3.sınıf 203301017 nolu öğrencisi olan Mahsum Akbulut tarafından yapılmıştır.',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  scrollDirection: Axis.horizontal,
                ),
              ]),
              RaisedButton(
                color: Colors.greenAccent,
                highlightColor: Colors.white12,
                child: Text('Geri Git'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
