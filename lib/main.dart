import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }


class UrunEkrani extends StatefulWidget {
  @override
  _UrunEkraniState createState() => _UrunEkraniState();
}

class _UrunEkraniState extends State<UrunEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tadım Fındık"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Ürün görseli
              Image.asset("assets/images/findik.jpg"), // **Kendi görsel yolunuzu kullanın**
              SizedBox(height: 16.0),
              // Ürün adı
              Text(
                "Tadım Fındık İçi",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              // Ürün gramajı
              Text(
                "180 gr",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 16.0),
              // Ürün açıklaması
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0),
              // Malzemeler listesi
              Text(
                "Malzemeler:",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "Fındık",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0),
              // Alerjen listesi
              Text(
                "Alerjen Listesi:",
                style: TextStyle(
                  fontSize: 6.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "Fındık",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0),
              // Fiyat
              Text(
                "15 TL",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              SizedBox(height: 16.0),
              // Sepete ekle butonu
              ElevatedButton(
                onPressed: () {
                  // **Ürünü sepete ekleme işleminizi yazın**
                  print("Sepete Eklendi!");
                },
                child: Text("Sepete Ekle"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
