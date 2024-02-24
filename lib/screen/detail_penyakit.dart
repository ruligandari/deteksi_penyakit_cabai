import 'dart:io';

import 'package:deteksi_penyakit_cabai/common/my_colors.dart';
import 'package:deteksi_penyakit_cabai/common/my_fonts.dart';
import 'package:deteksi_penyakit_cabai/model/penyakit_cabai.dart';
import 'package:deteksi_penyakit_cabai/widget/card_detail.dart';
import 'package:flutter/material.dart';

class DetailPenyakit extends StatelessWidget {
  final PenyakitCabai penyakitCabai;
  final File image;
  const DetailPenyakit({required this.penyakitCabai, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.green,
          title: Text(
            penyakitCabai.name,
            style: MyFonts.medium1,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              children: [
                cardWarning(
                    "Silahkan periksa apakah tanaman anda terkena penyakit ini atau tidak. Jika iya, silahkan lakukan pengendalian penyakit ini.",
                    MyColors.lightBlue,
                    "Penting"),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text("Gambar Tanaman Anda: ", style: MyFonts.medium1),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 300,
                  width: 600,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.file(
                      image,
                      fit: BoxFit.cover,
                      scale: 1,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 4),
                    child: Row(
                      children: [
                        Text("Referensi Gambar Penyakit: ",
                            style: MyFonts.medium1),
                      ],
                    )),
                SizedBox(
                  height: 200,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: penyakitCabai.imageUrls
                          .map(
                            (url) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  url,
                                  loadingBuilder:
                                      ((context, child, loadingProgress) {
                                    if (loadingProgress == null) return child;
                                    return (Center(
                                      child: CircularProgressIndicator(
                                        value: loadingProgress
                                                    .expectedTotalBytes !=
                                                null
                                            ? loadingProgress
                                                    .cumulativeBytesLoaded /
                                                loadingProgress
                                                    .expectedTotalBytes!
                                            : null,
                                      ),
                                    ));
                                  }),
                                ),
                              ),
                            ),
                          )
                          .toList()),
                ),
                cardDescription(penyakitCabai.description, MyColors.lightYellow,
                    "Deskripsi"),
                SizedBox(
                  height: 8,
                ),
                cardControl(penyakitCabai.controlingDisease, MyColors.lightBlue,
                    "Pengendalian"),
              ],
            ),
          ),
        ));
  }
}
