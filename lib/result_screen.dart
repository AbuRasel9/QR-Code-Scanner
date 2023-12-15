import 'package:flutter/material.dart';
import 'package:qr_code_scanner/scanner_page.dart';
class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "QR-Code Scanner",
          style:
          TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black87),
        ),
      ),
    );
  }
}
