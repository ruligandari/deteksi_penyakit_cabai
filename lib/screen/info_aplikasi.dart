import 'package:deteksi_penyakit_cabai/common/my_colors.dart';
import 'package:deteksi_penyakit_cabai/common/my_fonts.dart';
import 'package:flutter/material.dart';

class InfoAplikasi extends StatelessWidget {
  const InfoAplikasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Penggunaan Aplikasi"),
        backgroundColor: MyColors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(8),
              child: Text(
                "Panduan Penggunaan Aplikasi",
                style: MyFonts.medium2,
              ),
            ),
            Card(
                margin: const EdgeInsets.all(8),
                child: ExpansionTile(
                  title: Text(
                      "Cara Melakukan Deteksi Penyakit Cabai dengan Kamera",
                      style: MyFonts.medium1),
                  textColor: Colors.black,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("1. Pilih Ambil Gambar"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "2. Pilih Menu Kamera untuk mengambil gambar"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "3. Ambil Gambar cabai yang akan di deteksi"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("4. Hasil deteksi akan ditampilkan"),
                        ),
                      ],
                    )
                  ],
                )),
            Card(
                margin: const EdgeInsets.all(8),
                child: ExpansionTile(
                  title: Text(
                      "Cara Melakukan Deteksi Penyakit Cabai dengan Galeri",
                      style: MyFonts.medium1),
                  textColor: Colors.black,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("1. Pilih menu deteksi penyakit cabai"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "2. Pilih gambar cabai yang akan di deteksi"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "3. Tunggu beberapa saat hingga proses deteksi selesai"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("4. Hasil deteksi akan ditampilkan"),
                        ),
                      ],
                    )
                  ],
                )),
            Card(
                margin: const EdgeInsets.all(8),
                child: ExpansionTile(
                  title: Text("Penyakit tidak Terdeteksi?",
                      style: MyFonts.medium1),
                  textColor: Colors.black,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "1. Pastikan kondisi cahaya/gambar sekitar baik (tidak terlalu gelap/terang)"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "2. Posisikan gambar cabai dengan jelas dan tidak terpotong"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("2. Pastikan gambar tidak blur"),
                        ),
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
