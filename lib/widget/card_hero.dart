import 'package:flutter/material.dart';
import '../common/my_colors.dart';
import '../common/my_fonts.dart';

Widget cardHero(size, ElevatedButton button) {
  return (Center(
    child: Container(
      margin: const EdgeInsets.only(top: 16),
      height: 140,
      width: size.width * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: MyColors.green),
      child: Container(
        margin: const EdgeInsets.only(top: 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.yard_outlined,
                        size: 30,
                        color: MyColors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          "Scan",
                          style: MyFonts.small1,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: MyColors.white,
                    size: 30,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.manage_search,
                        size: 30,
                        color: MyColors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Diagnosa",
                          style: MyFonts.small1,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: MyColors.white,
                    size: 30,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.medical_services_outlined,
                        size: 30,
                        color: MyColors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Hasil",
                          style: MyFonts.small1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.only(top: 7.0), child: button)
          ],
        ),
      ),
    ),
  ));
}
