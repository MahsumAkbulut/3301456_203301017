import 'package:flutter/material.dart';
import 'package:hastane_randevu_2023/hastane_ekrani.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GirisEkran(),
    );
  }
}

class GirisEkran extends StatefulWidget {
  @override
  State<GirisEkran> createState() => _GirisEkranState();
}

class _GirisEkranState extends State<GirisEkran> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 100.0,
                  backgroundColor: Colors.greenAccent,
                  backgroundImage: AssetImage('assest/images/user.png'),
                ),
                SizedBox(
                  height: 50,
                ),
                TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.account_box),
                      border: OutlineInputBorder(),
                      hintText: "AD GİRİNİZ"),
                  controller: t1,
                  keyboardType: TextInputType.name,
                  maxLength: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.account_box_outlined),
                      border: OutlineInputBorder(),
                      hintText: "SOYAD GİRİNİZ"),
                  controller: t2,
                  keyboardType: TextInputType.name,
                  maxLength: 15,
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => hastane_ekrani(
                                ad: t1.text,
                                soyad: t2.text,
                              )),
                    );
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.greenAccent),
                  label: const Text(
                    ' İLERLE',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  icon: const Icon(Icons.fast_forward_sharp),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.greenAccent),
                  label: const Text(
                    'GERİ GİT',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  icon: const Icon(Icons.fast_rewind_sharp),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
