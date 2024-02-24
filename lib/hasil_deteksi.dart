import 'package:deteksi_penyakit_cabai/common/my_fonts.dart';
import 'package:deteksi_penyakit_cabai/model/penyakit_cabai.dart';
import 'package:deteksi_penyakit_cabai/screen/detail_penyakit.dart';
import 'package:flutter/material.dart';

import 'widget/card_penyakit.dart';

class HasilDeteksi extends StatelessWidget {
  const HasilDeteksi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Column());
    // handlerClassification(result) {
    //   var label = result['label'][0];
    //   var confidence = (result['confidence'] * 100).toStringAsFixed(2);
    //   if (result['label'][0] == '0') {
    //     return Row(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         (Padding(
    //           padding: const EdgeInsets.symmetric(horizontal: 18.0),
    //           child: Text(
    //             "Sehat $confidence%",
    //             style: MyFonts.medium1,
    //           ),
    //         )),
    //       ],
    //     );
    //   } else if (label == '1') {
    //     return (Column(
    //       children: [
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.start,
    //           children: [
    //             Padding(
    //               padding: const EdgeInsets.symmetric(horizontal: 18.0),
    //               child: Text(
    //                 "Leaf Curl $confidence%",
    //                 style: MyFonts.medium1,
    //               ),
    //             ),
    //           ],
    //         ),
    //         InkWell(
    //           onTap: () {
    //             Navigator.push(
    //                 context,
    //                 MaterialPageRoute(
    //                     builder: ((context) =>
    //                         DetailPenyakit(penyakitCabai: penyakitList[2]))));
    //           },
    //           child: cardPenyakit(
    //               const Icon(
    //                 Icons.bug_report_outlined,
    //                 color: Colors.black,
    //                 size: 30,
    //               ),
    //               "Leaf Curl",
    //               "Leaf Curl",
    //               Icon(Icons.arrow_forward_ios)),
    //         )
    //       ],
    //     ));
    //   } else if (label == '2') {
    //     return (Column(
    //       children: [
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.start,
    //           children: [
    //             Padding(
    //               padding: const EdgeInsets.symmetric(horizontal: 18.0),
    //               child: Text(
    //                 "Leaf Spot $confidence%",
    //                 style: MyFonts.medium1,
    //               ),
    //             ),
    //           ],
    //         ),
    //         InkWell(
    //           onTap: () {
    //             Navigator.push(
    //                 context,
    //                 MaterialPageRoute(
    //                     builder: ((context) =>
    //                         DetailPenyakit(penyakitCabai: penyakitList[1]))));
    //           },
    //           child: cardPenyakit(
    //               const Icon(
    //                 Icons.bug_report_outlined,
    //                 color: Colors.black,
    //                 size: 30,
    //               ),
    //               "Leaf Spot",
    //               "Leaf spot",
    //               Icon(Icons.arrow_forward_ios)),
    //         )
    //       ],
    //     ));
    //   } else if (label == '3') {
    //     return (Column(
    //       children: [
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.start,
    //           children: [
    //             Padding(
    //               padding: const EdgeInsets.symmetric(horizontal: 18.0),
    //               child: Text(
    //                 "White Fly $confidence%",
    //                 style: MyFonts.medium1,
    //               ),
    //             ),
    //           ],
    //         ),
    //         InkWell(
    //           onTap: () {
    //             Navigator.push(
    //                 context,
    //                 MaterialPageRoute(
    //                     builder: ((context) =>
    //                         DetailPenyakit(penyakitCabai: penyakitList[3]))));
    //           },
    //           child: cardPenyakit(
    //               const Icon(
    //                 Icons.bug_report_outlined,
    //                 color: Colors.black,
    //                 size: 30,
    //               ),
    //               "White Fly",
    //               "White Fly",
    //               Icon(Icons.arrow_forward_ios)),
    //         )
    //       ],
    //     ));
    //   } else if (label == '4') {
    //     return (Column(
    //       children: [
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.start,
    //           children: [
    //             Padding(
    //               padding: const EdgeInsets.symmetric(horizontal: 18.0),
    //               child: Text(
    //                 "Virus Kuning $confidence%",
    //                 style: MyFonts.medium1,
    //               ),
    //             ),
    //           ],
    //         ),
    //         InkWell(
    //           onTap: () {
    //             Navigator.push(
    //                 context,
    //                 MaterialPageRoute(
    //                     builder: ((context) =>
    //                         DetailPenyakit(penyakitCabai: penyakitList[0]))));
    //           },
    //           child: cardPenyakit(
    //               const Icon(
    //                 Icons.bug_report_outlined,
    //                 color: Colors.black,
    //                 size: 30,
    //               ),
    //               "Virus Kuning",
    //               "Gemini Virus",
    //               const Icon(Icons.arrow_forward_ios)),
    //         )
    //       ],
    //     ));
    //   } else if (confidence.toInt() <= 20.0) {
    //     return (Text("Tidak Dikenali"));
    //   }
    // }

    // return Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: MyColors.green,
    //     title: Text(
    //       "Deteksi Penyakit",
    //       style: MyFonts.medium1,
    //     ),
    //   ),
    //   body: ListView(
    //     children: [
    //       (imageSelect)
    //           ? Column(
    //               children: [
    //                 Container(
    //                   margin: const EdgeInsets.all(10),
    //                   child: ClipRRect(
    //                     borderRadius: BorderRadius.circular(20),
    //                     child: Image.file(
    //                       _image,
    //                       height: 300,
    //                       width: 350,
    //                       fit: BoxFit.cover,
    //                     ),
    //                   ),
    //                 ),
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.start,
    //                   children: [
    //                     Padding(
    //                       padding: const EdgeInsets.symmetric(
    //                           horizontal: 30.0, vertical: 8),
    //                       child: Text(
    //                         "Hasil Deteksi :",
    //                         style: MyFonts.medium3,
    //                       ),
    //                     ),
    //                   ],
    //                 )
    //               ],
    //             )
    //           : Center(child: CircularProgressIndicator()),
    //       SingleChildScrollView(
    //         child: Column(
    //           children: (imageSelect)
    //               ? _results.map((result) {
    //                   return Container(
    //                       margin: EdgeInsets.all(10),
    //                       child: handlerClassification(result));
    //                 }).toList()
    //               : [],
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}
