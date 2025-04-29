import 'package:flutter/material.dart';
import 'package:base_structure/core/theme/colors/app_colors.dart';

class AppDarkColors extends AppColors {

  @override
  Color get primary => const Color(0xFFF9656B);

  @override
  Color get secondary => const Color(0xff30e3a0);

  @override
  Color get bluishGreen => const Color(0xff18AA9D);

  @override
  Color get white => Colors.black;

  @override
  Color get grey => Colors.grey;

  @override
  Color get blue => Colors.blue;

  @override
  Color get appBarColor => const Color(0xFFF9656B);

  @override
  Color get black => Colors.white;

  @override
  Color get background => Colors.black;

  @override
  Color get blackOpacity => Colors.white70;

  @override
  Color get greyWhite => Colors.grey.withOpacity(0.2);

  @override
  Color get disableGray=> Colors.black38;

  @override
  Color get green => Colors.green;
}