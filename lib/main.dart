import 'package:flutter/material.dart';
import './vazifa7/vazifa_yetti.dart';
void main() {
  runApp(const MeningApp());
}

class MeningApp extends StatelessWidget {
  const MeningApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      title: "Birinchi App",
      home:  DasrOlti(),
    );
  }
}
