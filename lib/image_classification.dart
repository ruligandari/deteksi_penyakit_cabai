import 'dart:io';
import 'package:deteksi_penyakit_cabai/common/my_fonts.dart';
import 'package:deteksi_penyakit_cabai/model/penyakit_cabai.dart';
import 'package:deteksi_penyakit_cabai/screen/detail_penyakit.dart';
import 'package:deteksi_penyakit_cabai/widget/card_error.dart';
import 'package:deteksi_penyakit_cabai/widget/card_loading.dart';
import 'package:deteksi_penyakit_cabai/widget/card_penyakit.dart';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';
import 'common/my_colors.dart';

class ImageClassification extends StatefulWidget {
  final File image;
  // ignore: use_key_in_widget_constructors
  const ImageClassification(this.image);

  @override
  State<ImageClassification> createState() => _ImageClassificationState();
}

class _ImageClassificationState extends State<ImageClassification> {
  late File _image;
  late List _results;
  bool imageSelect = false;

  loadModel() async {
    Tflite.close();
    String res;
    res = (await Tflite.loadModel(
        model: "assets/model-1.tflite", labels: "assets/labels.txt"))!;
    print("model loading status $res");
  }

  Future imageClassification(image) async {
    int startTime = new DateTime.now().millisecondsSinceEpoch;
    final List? deteksi = await Tflite.runModelOnImage(
        path: image.path,
        numResults: 5,
        threshold: 0.1,
        imageMean: 117.0,
        imageStd: 255.0);

    setState(() {
      _results = deteksi!;
      _image = image;
      imageSelect = true;
    });
    int endTime = new DateTime.now().millisecondsSinceEpoch;
    print("Inference took ${endTime - startTime}ms");
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadModel();
    imageClassification(widget.image);
  }

  @override
  Widget build(BuildContext context) {
    hasildeteksi(_results) {
      var confidence = _results[0]['confidence'];
      var prediksi = _results[0]['confidence'] * 100;
      var index = _results[0]['index'];
      print(confidence);
      return (confidence > 0.75
          ? InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => DetailPenyakit(
                            penyakitCabai: penyakitList[index],
                            image: _image,
                          )))),
              child: cardPenyakit(
                  const Icon(
                    Icons.bug_report_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                  "${_results[0]['label']}",
                  prediksi.toStringAsFixed(2) + "%",
                  const Icon(Icons.arrow_forward_ios)))
          : cardError(
              "Untuk deteksi penyakit yang baik, pastikan posisi objek daun cabai yang akan dideteksi berada ditengah, dan coba untuk lebih dekat!"));
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.green,
        title: Text(
          "Deteksi Penyakit",
          style: MyFonts.medium1,
        ),
      ),
      body: ListView(
        children: [
          (imageSelect)
              ? Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.file(
                          _image,
                          height: 300,
                          width: 350,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 8),
                          child: Text(
                            "Hasil Deteksi :",
                            style: MyFonts.medium3,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Column(
                        children: [hasildeteksi(_results)],
                      ),
                    )
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    cardLoading(context, "Loading"),
                  ],
                ),
          // SingleChildScrollView(
          //   child: Column(
          //     children: imageSelect
          //         ? _results.map((result) {
          //             return Container(
          //                 margin: EdgeInsets.all(10),
          //                 child: handlerClassification(result));
          //           }).toList()
          //         : [],
          //   ),
          // )
        ],
      ),
    );
  }
}
