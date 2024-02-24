import 'package:deteksi_penyakit_cabai/common/my_colors.dart';
import 'package:deteksi_penyakit_cabai/common/my_fonts.dart';
import 'package:deteksi_penyakit_cabai/widget/detail_penyakit.dart';
import 'package:flutter/material.dart';

import 'model/penyakit_cabai.dart';

class DaftarPenyakit extends StatelessWidget {
  const DaftarPenyakit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    listPenyakit() {
      return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: penyakitList.length,
        itemBuilder: (BuildContext context, int index) {
          final PenyakitCabai data = penyakitList[index];
          return Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0),
            child: (Card(
              color: Colors.white,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailDaftarPenyakit(
                              penyakitCabai: penyakitList[index])));
                },
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.bug_report_outlined,
                                  color: Colors.black,
                                  size: 30,
                                )),
                            Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        data.name,
                                        style: MyFonts.medium2,
                                      ),
                                      Text(
                                        data.family,
                                        style: MyFonts.small2,
                                      ),
                                    ],
                                  ),
                                )),
                            const Expanded(
                                flex: 1, child: Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Daftar Penyakit Daun Cabai",
          style: MyFonts.medium1,
        ),
        backgroundColor: MyColors.green,
        shadowColor: null,
      ),
      body: Container(
        child: listPenyakit(),
      ),
    );
  }
}
