import 'package:device_preview/device_preview.dart';
import 'package:flowers/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (c) => const Flowers()
    ),
  );
}

class Flowers extends StatelessWidget {
  const Flowers({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
