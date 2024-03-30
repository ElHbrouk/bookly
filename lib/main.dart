import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bookly App',
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ).copyWith(
        textTheme: GoogleFonts.montserratAlternatesTextTheme(
            ThemeData.dark().textTheme),
        appBarTheme: const AppBarTheme(
          color: kPrimaryColor,
        ),
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      themeMode: ThemeMode.dark,
      home: const SplashView(),
    );
  }
}
