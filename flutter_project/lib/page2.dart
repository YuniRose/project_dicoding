import 'package:flutter/material.dart';

class PageDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: new MyHomePage(title: 'Kalkulator'), //judul aplikasi flutter
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var angka1 = 0, angka2 = 0, hsl = 0; //inisialisai variabel

  final TextEditingController t1 =
      new TextEditingController(text: ""); //controller untuk memanggil text 1
  final TextEditingController t2 =
      new TextEditingController(text: ""); //controller untuk memanggil text 2

  void tambah() {
    //method penjumlahan
    setState(() {
      angka1 = int.parse(t1
          .text); //berfungsi untuk jika kita memasukkan angka (t1), maka akan dikenali dengan variabel angka 1
      angka2 = int.parse(t2
          .text); //berfungsi untuk jika kita memasukkan angka (t2), maka akan dikenali dengan variabel angka 2
      hsl = angka1 + angka2; //angka yang di-inputkan akan di proses disini
    });
  }

  void kurang() {
    //method pengurangan
    setState(() {
      angka1 = int.parse(t1
          .text); //berfungsi untuk jika kita memasukkan angka (t1), maka akan dikenali dengan variabel angka 1
      angka2 = int.parse(t2
          .text); //berfungsi untuk jika kita memasukkan angka (t2), maka akan dikenali dengan variabel angka 2
      hsl = angka1 - angka2; //angka yang di-inputkan akan di proses disini
    });
  }

  void kali() {
    //method perkalian
    setState(() {
      angka1 = int.parse(t1
          .text); //berfungsi untuk jika kita memasukkan angka (t1), maka akan dikenali dengan variabel angka 1
      angka2 = int.parse(t2
          .text); //berfungsi untuk jika kita memasukkan angka (t2), maka akan dikenali dengan variabel angka 2
      hsl = angka1 * angka2; //angka yang di-inputkan akan di proses disini
    });
  }

  void bagi() {
    //method pembagian
    setState(() {
      angka1 = int.parse(t1
          .text); //berfungsi untuk jika kita memasukkan angka (t1), maka akan dikenali dengan variabel angka 1
      angka2 = int.parse(t2
          .text); //berfungsi untuk jika kita memasukkan angka (t2), maka akan dikenali dengan variabel angka 2
      hsl = angka1 ~/ angka2; //angka yang di-inputkan akan di proses disini
    });
  }

  void hapus() {
    //method menghapus angka yang diinputkan
    setState(() {
      t1.text = ""; //berfungsi untuk menghapus text1
      t2.text = ""; //berfungsi untuk menghapus text2
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Output : $hsl", //memunculkan hasil dari action yang dilakukan
              style: TextStyle(
                  fontSize: 20, //font Output berukuran 20
                  fontWeight: FontWeight.bold, //font Output menjadi tebal
                  color: Colors.black), //warna dafi font Output hitam
            ),
            TextField(
              keyboardType: TextInputType
                  .number, //jika kita klik otomatis memunculkan keyboard angka
              decoration: InputDecoration(
                  hintText:
                      "Masukkan angka pertama"), //memberikan kalimat pada texkfield
              controller: t1, //memanggil controller text 1
            ),
            TextField(
              keyboardType: TextInputType
                  .number, //jika kita klik otomatis memunculkan keyboard angka
              decoration: InputDecoration(
                  hintText:
                      "Masukkan angka kedua"), //memberikan kalimat pada texkfield
              controller: t2, //memanggil controller text 2
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20), //memberikan ruang/jarak antara texfield dan row
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceEvenly, //membuat row berada di tengah dan berjarak
              children: <Widget>[
                MaterialButton(
                  //berfungsi untuk tombol yang bisa di klik
                  child: Text("+"), //text dari tombol
                  color: Colors.cyanAccent, //memberi warna pada tombol
                  onPressed:
                      tambah, //jika kita memencet tombol, akan memanggil fungsi menghitung penjumlahan
                ),
                MaterialButton(
                  //berfungsi untuk tombol yang bisa di klik
                  child: Text("-"), //text dari tombol
                  color: Colors.cyanAccent, //memberi warna pada tombol
                  onPressed:
                      kurang, //jika kita memencet tombol, akan memanggil fungsi menghitung pengurangan
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10), //memberikan ruang/jarak antar row
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceEvenly, //membuat row berada di tengah dan berjarak
              children: <Widget>[
                MaterialButton(
                  //berfungsi untuk tombol yang bisa di klik
                  child: Text("*"), //text dari tombol
                  color: Colors.cyanAccent, //memberi warna pada tombol
                  onPressed:
                      kali, //jika kita memencet tombol, akan memanggil fungsi menghitung perkalian
                ),
                MaterialButton(
                  //berfungsi untuk tombol yang bisa di klik
                  child: Text("/"), //text dari tombol
                  color: Colors.cyanAccent, //memberi warna pada tombol
                  onPressed:
                      bagi, //jika kita memencet tombol, akan memanggil fungsi menghitung pembagian
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10), //memberikan ruang/jarak antar row
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceEvenly, //membuat row berada di tengah dan berjarak
              children: <Widget>[
                MaterialButton(
                  //berfungsi untuk tombol yang bisa di klik
                  child: Text("C"), //text dari tombol
                  color: Colors.cyanAccent, //memberi warna pada tombol
                  onPressed:
                      hapus, //jika kita memencet tombol, akan memanggil fungsi hapus
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
