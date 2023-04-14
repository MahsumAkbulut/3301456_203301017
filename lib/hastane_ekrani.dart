import 'package:flutter/material.dart';
import 'package:hastane_randevu_2023/randevu.dart';

class hastane_ekrani extends StatefulWidget {
  String ad, soyad;
  hastane_ekrani({required this.ad, required this.soyad});

  @override
  State<hastane_ekrani> createState() => _hastane_ekraniState();
}

class _hastane_ekraniState extends State<hastane_ekrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
          color: Colors.greenAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Text("Hoşgeldin" + " " + widget.ad + "  " + widget.soyad),
              SizedBox(),
            ],
          ),
          notchMargin: 30),
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hastaneler Listesi",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Randevu()),
                  );
                },
                style: ElevatedButton.styleFrom(primary: Colors.greenAccent),
                label: const Text(
                  ' Randevu al',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                icon: const Icon(Icons.fast_forward_sharp),
              ),
            ],
          ),
          backgroundColor: Colors.greenAccent),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          ExpansionTile(title: Text("İSTANBUL"), children: [
            ListTile(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Container(
                          color: Colors.cyan,
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "Medistanbul Hastanesi",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Medistanbul Sağlık A.Ş.  20 yılı aşkın süredir sağlık sektörünün farklı alanlarında kazandığı bilgi, birikim ve deneyimini; 2019 yılının ortalarında start verdiği ilk hastane kompleksi projesiyle 2021 Mart ayı itibariyle MEDİSTANBUL HASTANESİ markası adı altında faaliyet göstermeye başladı.  ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                ]),
                          ),
                        ),
                      );
                    });
              },
              iconColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(20)),
              leading: Image(image: AssetImage('assest/images/1.hastane.webp')),
              title: Text("Medistanbul Hastanesi"),
              subtitle: Text("Sultangazi, Türkiye"),
              trailing: Icon(Icons.arrow_circle_right_rounded),
            ),
            ListTile(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Container(
                          color: Colors.cyan,
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "Kolan International Hastanesi",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Kolan International Hospital olarak temel prensip; gelişen teknolojiyi sürekli takip etmek, tanı ve tedavi yöntemlerini sürekli olarak ileriye götüren tıp teknolojilerini benimseyerek, hastalarımıza daha iyi ve güvenli sağlık hizmeti vermektir.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                ]),
                          ),
                        ),
                      );
                    });
              },
              iconColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(20)),
              leading: Image(image: AssetImage('assest/images/2.hastane.jpg')),
              title: Text("Kolan International Hastanesi"),
              subtitle: Text("İstanbul, Türkiye"),
              trailing: Icon(Icons.arrow_circle_right_rounded),
            ),
            ListTile(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Container(
                          color: Colors.cyan,
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "Dental Boğaz Klikinliği",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Ağız ve diş sağlığı insan hayatının her döneminde büyük öneme sahiptir. Ağız ve diş sağlığı problemleri ve dişlerden kaynaklanan estetik sorunlar kişilerin hayatını ciddi anlamda olumsuz etkileyebilir.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                ]),
                          ),
                        ),
                      );
                    });
              },
              iconColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(20)),
              leading: Image(image: AssetImage('assest/images/3.hastane.jpeg')),
              title: Text("Dental Boğaz Kliniği"),
              subtitle: Text("İstanbul, Türkiye"),
              trailing: Icon(Icons.arrow_circle_right_rounded),
            ),
            ListTile(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Container(
                          color: Colors.cyan,
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "Medical Park Grubu",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Türkiye'nin en köklü ve deneyimli sağlık gruplarından olan MLP Care Grubu'nun amiral gemisi konumundaki Medical Park Hastaneleri olarak, 1993 yılından bu yana ülkemizin 12 ilinde 21 hastanemiz ile hizmet veriyoruz.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                ]),
                          ),
                        ),
                      );
                    });
              },
              iconColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(20)),
              leading: Image(image: AssetImage('assest/images/4.hastane.jpg')),
              title: Text("Medical Park Grubu"),
              subtitle: Text("İstanbul, Türkiye"),
              trailing: Icon(Icons.arrow_circle_right_rounded),
            ),
          ]),
          ExpansionTile(title: Text("ANKARA"), children: [
            ListTile(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Container(
                          color: Colors.cyan,
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "Güven Hastanesi",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Dünya standartlarında sağlık hizmeti sunmak hedefiyle 1975 yılında kurulan Özel Ankara Güven Hastanesi, modern tıbbın gereklerini, yılların tecrübesi ile birleştirerek hastalarına aktarmaya devam ediyor. Her alanda sunduğu kaliteli hizmet, hasta sayısını ve talebi arttırmakta; artan talep hastalarımıza olan sorumluluğumuzu yükseltmektedir.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                ]),
                          ),
                        ),
                      );
                    });
              },
              iconColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(20)),
              leading: Image(image: AssetImage('assest/images/5.hastane.jpg')),
              title: Text("Güven Hastanesi"),
              subtitle: Text(" Çankaya, Türkiye"),
              trailing: Icon(Icons.arrow_circle_right_rounded),
            ),
          ]),
          ExpansionTile(title: Text("BURSA"), children: [
            ListTile(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Container(
                          color: Colors.cyan,
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "Yıldız Göz Merkezi",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "2001 yılında kurulan Yıldırım Göz Merkezi, yüksek kaliteli görme bakımında öncüdür yirmi yıl Bursa'nın en iyi göz hastanelerinden biri olarak değerlendirilen hasta, hastalarına çok çeşitli modern oftalmik tedaviler sunmaktadır.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                ]),
                          ),
                        ),
                      );
                    });
              },
              iconColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(20)),
              leading: Image(image: AssetImage('assest/images/6.hastane.jpeg')),
              title: Text("Yıldız Göz Merkezi"),
              subtitle: Text("Bursa, Türkiye"),
              trailing: Icon(Icons.arrow_circle_right_rounded),
            ),
          ]),
          ExpansionTile(title: Text("KONYA"), children: [
            ListTile(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Container(
                          color: Colors.cyan,
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "Selçuklu  Hastanesi",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Selçuklu Hastanesi, Özel Selçuklu Hastanesi uzman hekim kadrosu ve deneyimli ekibi ile 7/24 sağlık hizmeti vermektedir.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                ]),
                          ),
                        ),
                      );
                    });
              },
              iconColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(20)),
              leading: Image(image: AssetImage('assest/images/7.hastane.jpg')),
              title: Text("Selçuklu Hastanesi"),
              subtitle: Text("Konya, Türkiye"),
              trailing: Icon(Icons.arrow_circle_right_rounded),
            ),
          ]),
          ExpansionTile(title: Text("ADANA"), children: [
            ListTile(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Container(
                          color: Colors.cyan,
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "Adana Şehir Hastanesi",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Adana Şehir Hastanesi veya Adana Şehir Eğitim ve Araştırma Hastanesi, Adana'nın Yüreğir ilçesinin Kışla mahallesinde bulunan bir şehir hastanesidir. Yatak kapasitesi 1.550 olan Adana Şehir Hastanesi, 18 Eylül 2017 tarihinde hizmete açıldı.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                ]),
                          ),
                        ),
                      );
                    });
              },
              iconColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(20)),
              leading: Image(image: AssetImage('assest/images/8.hastane.webp')),
              title: Text("Adana Şehir Hastanesi"),
              subtitle: Text("Adana, Türkiye"),
              trailing: Icon(Icons.arrow_circle_right_rounded),
            ),
          ]),
          ExpansionTile(title: Text("AKSARAY"), children: [
            ListTile(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Container(
                          color: Colors.cyan,
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "Ortaköy Devlet Hastanesi",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Adana Şehir Hastanesi veya Adana Şehir Eğitim ve Araştırma Hastanesi, Adana'nın Yüreğir ilçesinin Kışla mahallesinde bulunan bir şehir hastanesidir. Yatak kapasitesi 1.550 olan Adana Şehir Hastanesi, 18 Eylül 2017 tarihinde hizmete açıldı.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                ]),
                          ),
                        ),
                      );
                    });
              },
              iconColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(20)),
              leading: Image(image: AssetImage('assest/images/9.hastane.jpg')),
              title: Text("Ortaköy Devlet Hastanesi"),
              subtitle: Text("Aksaray, Türkiye"),
              trailing: Icon(Icons.arrow_circle_right_rounded),
            ),
          ]),
          ExpansionTile(title: Text("ANTALYA"), children: [
            ListTile(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Container(
                          color: Colors.cyan,
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "Antalya Atatürk Devlet Hastanesi",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Hastanemiz son hali ile 450 hasta yatağı, 18 ameliyathane, 1 doğumhane, 25 II. Seviye yoğun bakımları ile 5 yerleşkede Antalya ili, ilçeleri ve çevre illere hizmet vermektedir. ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                ]),
                          ),
                        ),
                      );
                    });
              },
              iconColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(20)),
              leading: Image(image: AssetImage('assest/images/10.hastane.jpg')),
              title: Text("Antalya Atatürk Devlet Hastanesi"),
              subtitle: Text("Antalya, Türkiye"),
              trailing: Icon(Icons.arrow_circle_right_rounded),
            ),
          ]),
          ExpansionTile(title: Text("ESKİŞEHİR"), children: [
            ListTile(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Container(
                          color: Colors.cyan,
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "Alpu İlçe Devlet Hastanesi",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Alpu İlçe Hastanesi, Eskişehir ili Alpu ilçesinde devlet hastanesi olarak faaliyet göstermektedir. Hastanemiz 2000 yılında Eskişehir Devlet Hastanesi Alpu Ünitesi olarak hizmete başlamış olup, Aile Hekimliği Pilot Uygulama Kanununun çıkması ve ilimizde Aile Hekimliği Sistemine geçilmesi ile birlikte 17/07/2006 tarihinde Alpu İlçe Gün Hastanesi ismini alarak hizmetine devam etmiştir.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                ]),
                          ),
                        ),
                      );
                    });
              },
              iconColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(20)),
              leading: Image(image: AssetImage('assest/images/11.hastane.jpg')),
              title: Text("Alpu İlçe Devlet Hastanesi"),
              subtitle: Text("Eskişehir, Türkiye"),
              trailing: Icon(Icons.arrow_circle_right_rounded),
            ),
          ]),
          ExpansionTile(title: Text("HATAY"), children: [
            ListTile(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Container(
                          color: Colors.cyan,
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "Samandağ Deniz Hastanesi",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "ÖZEL SAMANDAĞ DENİZ HASTANESİ, halkımıza hak ettikleri kaliteli ve güvenilir sağlık hizmetlerini sunmak, onları sağlıklı ve mutlu bir yaşama kavuşturmak üzere 2019 yılında hizmet vermeye başlamıştır. Hastanemiz, Hatay ili Samandağ İlçesi Cumhuriyet Mahallesi içerisinde oldukça stratejik bir konuma sahiptir",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                ]),
                          ),
                        ),
                      );
                    });
              },
              iconColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(20)),
              leading: Image(image: AssetImage('assest/images/12.hastane.jpg')),
              title: Text("Samandağ Deniz Hastanesi"),
              subtitle: Text("Hatay, Türkiye"),
              trailing: Icon(Icons.arrow_circle_right_rounded),
            ),
          ]),
          ExpansionTile(title: Text("KARABÜK"), children: [
            ListTile(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Container(
                          color: Colors.cyan,
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "Karabük Ağız Diş Sağlığı Merkez",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Hastanemiz, Merkez, Fevzi Çakmak Cd. No:31 Bayır Mahallesi, 78100 Karabük Merkez/Karabük adresinde 1 kat İdari Birimler ,1 kat Destek Birimler ve 2 Kat Poliklinikler olmak üzere toplam 4 katlı olarak  7286 m² kapalı alandan oluşan tek bir binada hizmet vermektedir.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                ]),
                          ),
                        ),
                      );
                    });
              },
              iconColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(20)),
              leading: Image(image: AssetImage('assest/images/13.hastane.jpg')),
              title: Text("Karabük Ağız Diş Sağlığı Merkez"),
              subtitle: Text("Karabük, Türkiye"),
              trailing: Icon(Icons.arrow_circle_right_rounded),
            ),
          ]),
          ExpansionTile(title: Text("NEVŞEHİR"), children: [
            ListTile(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Container(
                          color: Colors.cyan,
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "Nevşehir Devlet Hastanesi",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "2011 yılının Ocak ayında yeni hastanede hizmet vermeye başlamıştır. Toplam 340 iken 2020 yılında ek binanın açılması ile 500 yatak ile hizmet vermektedir. ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                ]),
                          ),
                        ),
                      );
                    });
              },
              iconColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(20)),
              leading: Image(image: AssetImage('assest/images/14.hastane.jpg')),
              title: Text("Nevşehir Devlet Hastanesi"),
              subtitle: Text("Nevşehir, Türkiye"),
              trailing: Icon(Icons.arrow_circle_right_rounded),
            ),
          ]),
        ]),
      )),
    );
  }
}
