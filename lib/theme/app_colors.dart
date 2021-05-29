import 'package:flutter/material.dart';

abstract class AppColors {
  Color get backgroundSecondary;
  Color get backgroundPrimary;
  Color get title;
  Color get buttom;
  Color get border;
  Color get error;
}

class AppColorDefault implements AppColors {
  @override
  Color get backgroundPrimary => Color(0xFFFFFFFF);

  @override
  Color get backgroundSecondary => Color(0xFF40B38C);

  @override
  Color get title => Color(0xFF40B28C);

  @override
  Color get buttom => Color(0xFF666666);

  @override
  Color get border => Color(0xFF666666);

  @override
  Color get error => Color(0xFFE83F5B);
}
