import 'package:bookly/constants.dart';
import 'package:flutter/cupertino.dart';

abstract class AppStyles {
  static const semiBold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static const regular20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    fontFamily: kFontFamily,
  );
  static const regular30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w400,
    fontFamily: kFontFamily,
  );
  static const bold20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontFamily: kFontFamily,
  );
  static const regular14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static const medium16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const medium18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
}
