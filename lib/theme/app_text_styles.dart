import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get buttom;
  TextStyle get titleAppBar;
  TextStyle get textAppBar;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  // TODO: implement buttom
  TextStyle get buttom => GoogleFonts.inter(
        color: AppTheme.colors.buttom,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      );

  @override
  // TODO: implement title
  TextStyle get title => GoogleFonts.montserrat(
      fontSize: 40, fontWeight: FontWeight.w700, color: AppTheme.colors.title);

  @override
  // TODO: implement titleAppBar
  TextStyle get titleAppBar => GoogleFonts.montserrat(
      fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xFFFFFFFF));

  TextStyle get textAppBar =>
      GoogleFonts.inter(fontSize: 14, color: Color(0xFF666666));
}
