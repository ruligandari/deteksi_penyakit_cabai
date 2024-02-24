import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'my_colors.dart';

class MyFonts {
  static TextStyle medium1 = GoogleFonts.poppins(fontWeight: FontWeight.w500);
  static TextStyle medium2 =
      GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 16);
  static TextStyle medium3 =
      GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 18);
  static TextStyle small2 = GoogleFonts.poppins(fontSize: 12);
  static TextStyle small1 = GoogleFonts.poppins(
      fontWeight: FontWeight.w500, fontSize: 12, color: MyColors.white);
}
