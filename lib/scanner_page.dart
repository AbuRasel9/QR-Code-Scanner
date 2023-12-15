import 'package:flutter/material.dart';

Color bgColor = Colors.white70;

class QrCodeScanner extends StatefulWidget {
  const QrCodeScanner({super.key});

  @override
  State<QrCodeScanner> createState() => _QrCodeScannerState();
}

class _QrCodeScannerState extends State<QrCodeScanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
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
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(14),
          child: Column(
            children: [
              //instruction part
              Expanded(
                  child: Container(
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Place the QR-Code in the area",
                      style: TextStyle(
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.black87),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Scanning will be started automatically",
                      style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 14, color: Colors.black54),
                    ),
                  ],
                ),
              )),

              //scanner part
              Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.red,
                  )),

              //result part
              Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text("Link",style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      letterSpacing: 1
                    ),),
              )),
            ],
          ),
        ));
  }
}
