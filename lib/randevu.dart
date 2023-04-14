import 'package:flutter/material.dart';

class Randevu extends StatefulWidget {
  const Randevu({
    Key? key,
  }) : super(key: key);

  @override
  State<Randevu> createState() => _RandevuState();
}

class _RandevuState extends State<Randevu> {
  DateTime dt = DateTime.now();
  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    ).then((value) {
      setState(() {
        dt = value!;
      });
    });
  }

  String kul_secimi = "";
  String klinik_secimi = "";
  String randevu = "";
  void randevu_al() {
    setState(() {
      randevu = (klinik_secimi +
          " " +
          "kliniğinden" +
          " " +
          kul_secimi +
          " " +
          "Hastanesine" +
          " " +
          dt.year.toString() +
          "/" +
          dt.month.toString() +
          "/" +
          dt.day.toString() +
          " " +
          "tarihli randevunuz alınmıştır.");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Randevu Ekranı",
          style: TextStyle(
              fontSize: 40,
              color: Colors.greenAccent,
              fontStyle: FontStyle.italic),
        ),
        actions: [],
      ),
      body: Container(
        color: Colors.greenAccent,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 200,
                child: Center(
                  child: CircleAvatar(
                    radius: 100.0,
                    backgroundColor: Colors.greenAccent,
                    backgroundImage: AssetImage('assest/images/user.png'),
                  ),
                ),
                padding: const EdgeInsets.all(10),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Hastane Seçiniz=',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                            fontStyle: FontStyle.italic),
                      ),
                      Text(
                        kul_secimi,
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  DropdownButton(
                      items: [
                        DropdownMenuItem(
                          child: Text("Medistanbul Hastanesi"),
                          value: "Medistanbul Hastanesi",
                        ),
                        DropdownMenuItem(
                          child: Text("Kolan International Hastanesi"),
                          value: "Kolan International Hastanesi",
                        ),
                        DropdownMenuItem(
                          child: Text("Dental Boğaz Klikinliği"),
                          value: "Dental Boğaz Klikinliği",
                        ),
                        DropdownMenuItem(
                          child: Text("Medical Park Grubu"),
                          value: "Medical Park Grubu",
                        ),
                        DropdownMenuItem(
                          child: Text("Güven Hastanesi"),
                          value: "Güven Hastanesi",
                        ),
                        DropdownMenuItem(
                          child: Text("Yıldız Göz Merkezi"),
                          value: "Yıldız Göz Merkezi",
                        ),
                        DropdownMenuItem(
                          child: Text("Selçuklu Hastanesi"),
                          value: "Selçuklu Hastanesi",
                        ),
                        DropdownMenuItem(
                          child: Text("Adana Şehir Hastanesi"),
                          value: "Adana Şehir Hastanesi",
                        ),
                        DropdownMenuItem(
                          child: Text("Ortaköy Devlet Hastanesi"),
                          value: "Ortaköy Devlet Hastanesi",
                        ),
                        DropdownMenuItem(
                          child: Text("Antalya Atatürk Devlet Hastanesi"),
                          value: "Antalya Atatürk Devlet Hastanesi",
                        ),
                        DropdownMenuItem(
                          child: Text("Alpu İlçe Devlet Hastanesi"),
                          value: "Alpu İlçe Devlet Hastanesi",
                        ),
                        DropdownMenuItem(
                          child: Text("Samandağ Deniz Hastanesi"),
                          value: "Samandağ Deniz Hastanesi",
                        ),
                        DropdownMenuItem(
                          child: Text("Medistanbul Hastanesi"),
                          value: "Medistanbul Hastanesi",
                        ),
                        DropdownMenuItem(
                          child: Text("Karabük Ağız Diş Sağlığı Merkez"),
                          value: "Karabük Ağız Diş Sağlığı Merkez",
                        ),
                        DropdownMenuItem(
                          child: Text("Nevşehir Devlet Hastanesi"),
                          value: "Nevşehir Devlet Hastanesi",
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          kul_secimi = value.toString();
                        });
                      }),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Tarih=',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                            fontStyle: FontStyle.italic),
                      ),
                      Text(
                        dt.year.toString() +
                            "/" +
                            dt.month.toString() +
                            "/" +
                            dt.day.toString(),
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  ElevatedButton.icon(
                    onPressed: _showDatePicker,
                    style: ElevatedButton.styleFrom(primary: Colors.black),
                    label: const Text(
                      ' Tarih Seç',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.greenAccent,
                          fontStyle: FontStyle.italic),
                    ),
                    icon: const Icon(Icons.date_range),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Klinik Seçin=',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                            fontStyle: FontStyle.italic),
                      ),
                      Text(
                        klinik_secimi,
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  DropdownButton(
                      items: [
                        DropdownMenuItem(
                          child: Text("Yoğun Bakım"),
                          value: "Yoğun Bakım",
                        ),
                        DropdownMenuItem(
                          child: Text("Palyatif Bakım"),
                          value: "Palyatif Bakım",
                        ),
                        DropdownMenuItem(
                          child: Text("Beyin ve Sinir Cerrahisi"),
                          value: "Beyin ve Sinir Cerrahisi",
                        ),
                        DropdownMenuItem(
                          child: Text("Çocuk Sağlığı ve Hastalıkları"),
                          value: "Çocuk Sağlığı ve Hastalıkları",
                        ),
                        DropdownMenuItem(
                          child: Text("Enfeksiyon Hastalıkları"),
                          value: "Enfeksiyon Hastalıkları",
                        ),
                        DropdownMenuItem(
                          child: Text("Fiziksel Tıp ve Rehabilitasyon"),
                          value: "Fiziksel Tıp ve Rehabilitasyon",
                        ),
                        DropdownMenuItem(
                          child: Text("Genel Cerrahi"),
                          value: "Genel Cerrahi",
                        ),
                        DropdownMenuItem(
                          child: Text("Genel Dahiliye"),
                          value: "Genel Dahiliye",
                        ),
                        DropdownMenuItem(
                          child: Text("Göğüs Cerrahi"),
                          value: "Göğüs Cerrahi",
                        ),
                        DropdownMenuItem(
                          child: Text("Göğüs Hastalıkları"),
                          value: "Göğüs Hastalıkları",
                        ),
                        DropdownMenuItem(
                          child: Text("Göz Hastalıkları"),
                          value: "Göz Hastalıkları",
                        ),
                        DropdownMenuItem(
                          child: Text("Kadın Hastalıkları ve Doğum"),
                          value: "Kadın Hastalıkları ve Doğum",
                        ),
                        DropdownMenuItem(
                          child: Text("Kalp Damar Cerrahisi"),
                          value: "Kalp Damar Cerrahisi",
                        ),
                        DropdownMenuItem(
                          child: Text("Kardiyoloji"),
                          value: "Kardiyoloji",
                        ),
                        DropdownMenuItem(
                          child: Text("Kulak Burun Boğaz"),
                          value: "Kulak Burun Boğaz",
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          klinik_secimi = value.toString();
                        });
                      }),
                ],
              ),
              ElevatedButton.icon(
                onPressed: randevu_al,
                style: ElevatedButton.styleFrom(primary: Colors.black),
                label: const Text(
                  ' RANDEVU AL',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold),
                ),
                icon: const Icon(Icons.check),
              ),
              Container(
                width: 350,
                child: Divider(
                  height: 30,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 30),
              Text(randevu, style: TextStyle(color: Colors.black))
            ],
          ),
        ),
      ),
    );
  }
}
