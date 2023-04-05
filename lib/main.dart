import 'package:flutter/material.dart';
import 'package:fornasmala/pages/home.dart';
import 'package:fornasmala/pages/language.dart';
import 'package:fornasmala/pages/main_page.dart';

import 'pages/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mainpage(),
    );
  }
}
