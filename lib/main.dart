import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/Features/splash/presentation/views/splash_view.dart';
import 'package:store/core/utils/colors.dart';

void main() {
  runApp(StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        textTheme: ThemeData.light().textTheme.apply(
          bodyColor: Colorss.kCategoryCardColor,
          displayColor: Colorss.kCategoryCardColor,
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
      ),
    );
  }
}
