import 'package:basic_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
          // textTheme: GoogleFonts.poppinsTextTheme(),
          ),
    );
  }
}
