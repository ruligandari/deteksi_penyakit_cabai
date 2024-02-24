import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../common/my_colors.dart';
import '../common/my_fonts.dart';

Widget cardError(String message) {
  return (Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: MyColors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0, bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 1,
                child: Icon(
                  Icons.error,
                  color: MyColors.red,
                  size: 40,
                )),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Terjadi Kesalahan",
                        style: MyFonts.medium2,
                      ),
                      Text(
                        message,
                        style: MyFonts.small2,
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: Icon(
                  Icons.sms_failed,
                  color: MyColors.gray,
                  size: 30,
                ))
          ],
        ),
      ),
    ),
  ));
}
