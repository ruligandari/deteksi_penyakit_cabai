import 'package:flutter/material.dart';

import '../common/my_colors.dart';
import '../common/my_fonts.dart';
import '../model/penyakit_cabai.dart';

class DetailDaftarPenyakit extends StatelessWidget {
  final PenyakitCabai penyakitCabai;
  DetailDaftarPenyakit({required this.penyakitCabai});

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
                const SizedBox(
                  height: 8,
                ),
                cardControl(penyakitCabai.controlingDisease, MyColors.lightBlue,
                    "Pengendalian"),
              ],
            ),
          ),
        ));
  }

  cardDescription(isi, color, textInfo) {
    return (Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(right: 5),
                    child: Icon(Icons.bug_report)),
                Text(
                  textInfo,
                  style: MyFonts.medium2,
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 10, left: 8, right: 8),
                child: Text(
                  isi.toString(),
                  textAlign: TextAlign.justify,
                  style: MyFonts.small2,
                ))
          ],
        ),
      ),
    ));
  }

  cardControl(List isi, color, textInfo) {
    return (Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(right: 5),
                  child: const Icon(Icons.info)),
              Text(
                textInfo,
                style: MyFonts.medium2,
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: isi.length,
                itemBuilder: ((context, index) {
                  return (Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                          flex: 1, child: Icon(Icons.check, size: 18)),
                      Expanded(
                          flex: 10,
                          child: Text(
                            isi[index],
                            style: MyFonts.small2,
                            textAlign: TextAlign.justify,
                          )),
                      const Spacer(
                        flex: 1,
                      )
                    ],
                  ));
                })),
          )
        ]),
      ),
    ));
  }

  cardPengobatan(List isi, color, textInfo) {
    return (Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(right: 5),
                  child: const Icon(Icons.info)),
              Text(
                textInfo,
                style: MyFonts.medium2,
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: isi.length,
                itemBuilder: ((context, index) {
                  return (Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                          flex: 1, child: Icon(Icons.check, size: 18)),
                      Expanded(
                          flex: 10,
                          child: Text(
                            isi[index],
                            style: MyFonts.small2,
                            textAlign: TextAlign.justify,
                          )),
                      const Spacer(
                        flex: 1,
                      )
                    ],
                  ));
                })),
          )
        ]),
      ),
    ));
  }
}
