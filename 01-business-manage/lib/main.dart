import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reel_ui/home.dart';


// flutter.demon (Gautam Yadav)

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          surface: Colors.white,
        ),
        fontFamily: GoogleFonts.nanumGothic().fontFamily,
      ),
      home: const Scaffold(
        body: HomePage(),
      ),
    );
  }
}
