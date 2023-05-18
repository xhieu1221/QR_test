import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:giao_dien_lts/Tabs/result_screen.dart';
// import 'package:qr_flutter/qr_flutter.dart';
// import 'package:mobile_scanner/mobile_scanner.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';
// import 'package:qr_scanner/qr_scanner_web.dart';

class GroupScreen extends StatelessWidget {
  const GroupScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(247, 243, 234, 234),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     bool isScanCompleted = false;

//     void closeScreen() {
//       isScanCompleted = false;
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('QR_Scanner',
//             style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
//       ),
//       body: Container(
//         width: double.infinity,
//         padding: EdgeInsets.all(16),
//         child: Column(
//           children: [
//             Expanded(
//                 child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Please put the QR code to fit the frame',
//                   style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
//                 )
//               ],
//             )),
//             Expanded(
//                 flex: 4,
//                 child: Stack(
//                   children: [
//                     MobileScanner(
//                         // allowDupLicates: true,
//                         onDetect: (
//                       barcode, //args,
//                     ) {
//                       if (!isScanCompleted) {
//                         String code = barcode.raw;
//                         isScanCompleted = true;
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => ResultScreen(
//                                       closeScreen: closeScreen,
//                                       code: code,
//                                     )));
//                       }
//                     }),
//                     // QRScannerOverlay(overlayColour)
//                   ],
//                 )),
//             Expanded(
//                 child: Container(
//               color: Color.fromARGB(255, 85, 7, 255),
//             )),
//           ],
//         ),
//       ),
//     );
//   }
// }
