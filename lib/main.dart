import 'package:flutter/material.dart';
import 'package:xber_futsal_club_app/collapse_appbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CollapseAppBar(),
    );
  }
}