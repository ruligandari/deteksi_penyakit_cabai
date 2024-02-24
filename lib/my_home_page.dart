import 'dart:io';
import 'package:deteksi_penyakit_cabai/common/my_colors.dart';
import 'package:deteksi_penyakit_cabai/common/my_fonts.dart';
import 'package:deteksi_penyakit_cabai/image_classification.dart';
import 'package:deteksi_penyakit_cabai/screen/info_aplikasi.dart';
import 'package:deteksi_penyakit_cabai/info_developer.dart';
import 'package:deteksi_penyakit_cabai/info_dkp3.dart';
import 'package:deteksi_penyakit_cabai/widget/card_hero.dart';
import 'package:deteksi_penyakit_cabai/widget/card_info.dart';
import 'package:flutter/material.dart';
import 'daftar_penyakit.dart';
import 'package:image_picker/image_picker.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Future openCamera() async {
      final ImagePicker picker = ImagePicker();
      final XFile? img = await picker.pickImage(
          source: ImageSource.camera,
          maxHeight: 1000,
          maxWidth: 1000,
          imageQuality: 100);
      File image = File(img!.path);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (((context) => ImageClassification(image)))));
    }

    Future openGallery() async {
      final ImagePicker picker = ImagePicker();
      final XFile? img = await picker.pickImage(
          source: ImageSource.gallery,
          maxHeight: 480,
          maxWidth: 640,
          imageQuality: 100);
      File image = File(img!.path);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (((context) => ImageClassification(image)))));
    }

    dialogSelectMediaOptions() {
      showDialog(
          context: context,
          builder: ((context) {
            return (AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                title: Text(
                  "Pilih Media",
                  style: MyFonts.medium1,
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Batal", style: MyFonts.medium1))
                ],
                content: SizedBox(
                    height: 90,
                    width: 90,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    openCamera();
                                    Navigator.of(context).pop();
                                  },
                                  icon: const Icon(
                                    Icons.camera_alt,
                                    size: 60,
                                  )),
                              Container(
                                margin: EdgeInsets.only(top: 16, left: 25),
                                child: Text(
                                  "Kamera",
                                  style: MyFonts.medium1,
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              IconButton(
                                  alignment: Alignment.center,
                                  onPressed: () {
                                    openGallery();
                                    Navigator.of(context).pop();
                                  },
                                  icon: const Icon(
                                    Icons.image,
                                    size: 60,
                                  )),
                              Container(
                                margin: EdgeInsets.only(top: 16, left: 25),
                                child: Text(
                                  "Galeri",
                                  style: MyFonts.medium1,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ))));
          }));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Deteksi Penyakit Cabai", style: MyFonts.medium1),
        backgroundColor: MyColors.green,
        shadowColor: null,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            cardHero(
              size,
              ElevatedButton(
                  onPressed: dialogSelectMediaOptions,
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(290, 20),
                      primary: MyColors.darkBlue),
                  child: Text(
                    "Ambil Gambar",
                    style: MyFonts.medium1,
                  )),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 21.0, left: 24.0),
                  child: Text(
                    "Informasi Aplikasi",
                    style: MyFonts.medium2,
                  ),
                ),
              ],
            ),
            //card info
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return const InfoAplikasi();
                })));
              },
              child: cardInfo(
                  const Icon(
                    Icons.info_outline_rounded,
                    size: 50,
                  ),
                  "Aplikasi",
                  "Penggunaan Aplikasi",
                  const Icon(Icons.arrow_forward_ios)),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return const InfoDeveloper();
                })));
              },
              child: cardInfo(
                  const Icon(
                    Icons.developer_board,
                    size: 50,
                  ),
                  "Developer",
                  "Tentang Developer",
                  const Icon(Icons.arrow_forward_ios)),
            ),
            // InkWell(
            //   onTap: () {
            //     Navigator.push(context, MaterialPageRoute(builder: ((context) {
            //       return const InfoDKP3();
            //     })));
            //   },
            //   child: cardInfo(
            //       const Icon(
            //         Icons.group,
            //         size: 50,
            //       ),
            //       "DKP3",
            //       "DKP3 Majalengka",
            //       const Icon(Icons.arrow_forward_ios)),
            // ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 21.0, left: 24.0),
                  child: Text(
                    "Informasi Penyakit",
                    style: MyFonts.medium2,
                  ),
                ),
              ],
            ),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return const DaftarPenyakit();
                })));
              },
              child: cardInfo(
                  const Icon(
                    Icons.yard_rounded,
                    size: 50,
                  ),
                  "Penyakit Daun Cabai",
                  "Daftar Penyakit Daun",
                  const Icon(Icons.arrow_forward_ios)),
            ),
          ],
        )),
      ),
    );
  }
}
