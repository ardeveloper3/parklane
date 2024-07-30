import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:parklane/views/QrScanner_page/Scanner_result_page.dart';
import 'package:qr_scanner_overlay/qr_scanner_overlay.dart';

class QrscannerPage extends StatefulWidget {
  const QrscannerPage({super.key});

  @override
  State<QrscannerPage> createState() => _QrscannerPageState();
}

class _QrscannerPageState extends State<QrscannerPage> {

  bool isScanCompleted = false;
  void closeScreen(){
    isScanCompleted = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Container(
  child: Expanded(
    flex: 4,
    child: Stack(
      children: [
        MobileScanner(

          allowDuplicates: true,

          onDetect: ( barcode , args){
            if(!isScanCompleted){
              String code = barcode.rawValue ?? "--";
              isScanCompleted = true;
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Resultscreen(code: code, closeScreen: closeScreen,)));
            }
          },

        ),

        QRScannerOverlay(
          overlayColor: Colors.black26,
          borderColor: Colors.white,
          borderRadius: 20,
          borderStrokeWidth: 10,
          scanAreaWidth: 250,
          scanAreaHeight: 250,
        )
      ],
    ),
  ),
),
    );
  }
}
