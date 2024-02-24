import 'package:flutter/material.dart';
import '../model/penyakit_cabai.dart';
import '../common/my_colors.dart';
import '../common/my_fonts.dart';

Widget cardDescription(isi, color, textInfo) {
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

Widget cardWarning(isi, color, textInfo) {
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
                  child: Icon(Icons.info_outline)),
              Text(
                textInfo,
                style: MyFonts.medium2,
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: 8, left: 8, right: 8),
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

Widget cardControl(List isi, color, textInfo) {
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
                    const Expanded(flex: 1, child: Icon(Icons.check, size: 18)),
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

Widget cardPengobatan(List isi, color, textInfo) {
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
                    const Expanded(flex: 1, child: Icon(Icons.check, size: 18)),
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
