import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:giao_dien_lts/Tabs/screen2.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:giao_dien_lts/Tabs/message.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';
// import 'package:qr_scanner/qr_scanner.dart';
import '../main.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  bool isScanCompleted = false;
  bool isFlatOn = false;
  bool isFrontCamera = false;
  MobileScannerController controller = MobileScannerController();
  // ResultScreen({required void Function() closeScreen, required String code}) {}
  void closeScreen() {
    isScanCompleted = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isFlatOn = !isFlatOn;
                });
                // if (isFlatOn) {
                //   controller.toggleTorch();
                // } else
                //   controller.toggleTorch();
                controller.toggleTorch();
              },
              icon: Icon(
                Icons.flash_on,
                color: isFlatOn ? Colors.amber : Colors.white,
              )),
          IconButton(
              onPressed: () {
                setState(() {
                  isFrontCamera = !isFrontCamera;
                });
                // if (isFlatOn) {
                //   controller.toggleTorch();
                // } else
                //   controller.toggleTorch();
                controller.switchCamera();
              },
              icon: Icon(
                Icons.camera_front,
                color: isFrontCamera ? Colors.amber : Colors.white,
              ))
        ],
        iconTheme: IconThemeData(color: Colors.amber),
        title: Text('QR_Scanner',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Please put the QR code to fit the frame',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                )
              ],
            )),
            Expanded(
                flex: 4,
                child: Stack(
                  children: [
                    MobileScanner(
                        controller: controller,
                        // allowDupLicates: true,
                        onDetect: (
                          barcode,
                          args,
                        ) {
                          if (!isScanCompleted) {
                            print('---------------------------isScanCompleted');
                            // String code = barcode.image as String;
                            String code = barcode.rawValue ?? '---';
                            print(
                                '---------------------------isScanCompleted 22222');
                            isScanCompleted = true;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ResultScreen(
                                          closeScreen: closeScreen,
                                          code: code,
                                        )));
                          }
                        }),
                    // QRScannerOverlay(overlayColour)
                  ],
                )),
            Expanded(
                child: Container(
              child: Text('QR'),
              // color: Color.fromARGB(255, 85, 7, 255),
            )),
          ],
        ),
      ),
    );
  }
}
