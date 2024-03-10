import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:havahavaiAssignment/Screens/screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.dmSansTextTheme()),
      home: const Homepage(),
    ),
  );
}
