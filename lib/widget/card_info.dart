import 'package:flutter/material.dart';
import '../common/my_colors.dart';
import '../common/my_fonts.dart';

Widget cardInfo(
    Icon iconPrimary, tagPrimary, tagSecondary, Icon iconSecondary) {
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
            Expanded(flex: 1, child: iconPrimary),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tagPrimary,
                        style: MyFonts.medium2,
                      ),
                      Text(
                        tagSecondary,
                        style: MyFonts.small2,
                      )
                    ],
                  ),
                )),
            Expanded(flex: 1, child: iconSecondary)
          ],
        ),
      ),
    ),
  ));
}
