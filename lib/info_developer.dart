import 'package:deteksi_penyakit_cabai/common/my_colors.dart';
import 'package:flutter/material.dart';

class InfoDeveloper extends StatelessWidget {
  const InfoDeveloper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informasi Developer"),
        backgroundColor: MyColors.green,
      ),
      body: Container(
        child: Container(child: ClipRect(child: Image.asset("assets/2.jpg"))),
      ),
    );
  }
}
